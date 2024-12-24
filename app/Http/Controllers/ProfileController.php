<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class ProfileController extends Controller
{
    public function index($id){
        $data = User::find($id);
        return view('pages.profile.index',compact('data'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $user = User::find($request->user_id);

        // Validate input
        $request->validate([
            'fullname' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'username' => 'required|string|max:255',
            'password' => 'nullable|string', // For password confirmation, you can add an extra field for confirmation in the form
            'profile' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048', // Image validation
        ]);

        
        

        if ($request != null) {
            if ($request->hasFile('profile')) {
                // Hapus foto profil lama jika ada
                if ($user->profile) {
                    Storage::disk('public')->delete($user->profile);
                }
        
                // Simpan foto profil baru
                $avatarPath = $request->file('profile')->store('avatars', 'public');
                $user->profile = $avatarPath;
            }
        
            // Perbarui field lain
            $user->name = $request->fullname;
            $user->email = $request->email;
            $user->username = $request->username;
        
            // Perbarui password hanya jika diisi
            if ($request->filled('password')) {
                $user->password = Hash::make($request->password);
            }
        
            $user->save();
        }
        

        // Save changes

        // Redirect with success message
        return redirect()->back()->with('success', 'Profile updated successfully.');
    }
}

