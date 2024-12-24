@extends('layout.admin.main')

@section('title')
    Kelola User || {{ Auth::user()->name }}
@endsection

@section('content')
<div class="mb-3">
    <form action="{{ route('direktur.komisi') }}" method="GET" class="d-flex align-items-center">
        <div class="me-2">
            <label for="from" class="form-label">Dari Tanggal</label>
            <input type="date" name="from" id="from" class="form-control" value="{{ request('from') }}">
        </div>
        <div class="me-2">
            <label for="to" class="form-label">Sampai Tanggal</label>
            <input type="date" name="to" id="to" class="form-control" value="{{ request('to') }}">
        </div>
        <div class="mt-4">
            <button type="submit" class="btn btn-primary">Filter</button>
        </div>
    </form>
</div>


    <div class="card mt-3">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="card-title mb-0">Laporan Incentive Sales</h5>
            <a href="{{ route('direktur.komisi.print', ['from' => request('from'), 'to' => request('to')]) }}" class="btn btn-warning">
                <i class="bx bxs-printer"></i>
            </a>
            
        </div>
        
        <div class="container">
            <div class="table-responsive">
                <table class="table table-striped table-bordered mb-4">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>No. IT</th>
                            <th>NAMA CUSTOMER</th>
                            <th>No. PO</th>
                            <th>No. JO</th>
                            <th>SALES CODE</th>
                            <th>IT SALES</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $d)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>
                                <img src="{{asset('storage/'.$d->profile)}}" width="35px" alt="">
                                {{ $d->no_it }}</td>
                            <td>{{ $d->customer_name }}</td>
                            <td>{{ $d->no_po }}</td>
                            <td>{{ $d->no_jo }}</td>
                            <td>SG</td>
                            <td>Rp. {{ number_format($d->se, 2, ',', '.') }}</td>
                            
                        </tr>
                        @endforeach

                        <tr>
                            <td colspan="7"></td>
                        </tr>
                        <tr>
                            <td colspan="7"></td>

                        </tr>
                        <tr>
                            <td>TOTAL</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Rp. {{ number_format($sum, 2, ',', '.') }}</td>

                        </tr>
    
                    </tbody>
                </table>
            </div>

            @if(request('from') && request('to'))
                <p class="text-muted">Data dari tanggal <strong>{{ request('from') }}</strong> sampai <strong>{{ request('to') }}</strong></p>
            @endif

        </div>
    </div>

@endsection
