<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Project;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;
use App\Mail\CompanyContactMail;
use DrewM\MailChimp\MailChimp;

class ProjectController extends Controller
{
    public function index()
    {
        $projects = Project::all();
        return view('homepage.index', compact('projects'));
    }

    public function send(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

        $details = [
            'email' => $request->email,
        ];

        Mail::to(config('mail.from.address'))->send(new CompanyContactMail($details));

        $mailchimp = new MailChimp(env('MAILCHIMP_API_KEY'));
        $mailchimp->post("lists/" . env('MAILCHIMP_LIST_ID') . "/members", [
            'email_address' => $request->email,
            'status'        => 'subscribed',
        ]);

        return redirect()->route('homepage.index')->with('success', 'Contact information sent successfully.');
    }

    public function admin()
    {
        if (!Session::has('admin_id')) {
            return redirect()->route('index');
        }

        $projects = Project::all();
        return view('admin.admin', compact('projects'));
    }

    public function store(Request $request)
    {
        if (!Session::has('admin_id')) {
            return abort(403, 'Unauthorized action.');
        }

        $request->validate([
            'name' => 'required|string|max:255',
            'subtitle' => 'required|string|max:255',
            'description' => 'required|string',
            'url' => 'required|url',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        Project::create([
            'name' => $request->name,
            'subtitle' => $request->subtitle,
            'description' => $request->description,
            'url' => $request->url,
            'image' => $request->file('image')->store('public/images'),
        ]);

        return redirect()->route('admin.dashboard')->with('success', 'Project added successfully');
    }

    public function update(Request $request)
    {
        if (!Session::has('admin_id')) {
            return abort(403, 'Unauthorized action.');
        }

        $request->validate([
            'id' => 'required|exists:projects,id',
            'name' => 'required|string|max:255',
            'subtitle' => 'required|string|max:255',
            'description' => 'required|string',
            'url' => 'required|url',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $project = Project::find($request->id);

        $project->update([
            'name' => $request->name,
            'subtitle' => $request->subtitle,
            'description' => $request->description,
            'url' => $request->url,
            'image' => $request->hasFile('image') ? $request->file('image')->store('public/images') : $project->image,
        ]);

        return redirect()->route('admin.dashboard')->with('success', 'Project updated successfully');
    }

    public function destroy(Project $project)
    {
        if (!Session::has('admin_id')) {
            return abort(403, 'Unauthorized action.');
        }

        $project->delete();

        return redirect()->route('admin.dashboard')->with('success', 'Project deleted successfully');
    }
}
