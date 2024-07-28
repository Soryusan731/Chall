@extends('layouts.app')

@section('title', 'Home')

@section('content')
<main id="main" class="flex justify-center items-center">
    <div class="mx-auto md:w-1/4 w-3/4 text-center text-white">
        <h1 class="md:text-5xl text-4xl">Brainster.xyz Labs</h1>
        <p class="mt-5 opacity-80 md:text-l">Пpоекти од акдемиите на Brainster</p>
    </div>
</main>

<section>
    <div class="my-10 grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-4 mx-auto w-4/5">
        @foreach($projects as $project)
        <div class="mx-auto max-w-sm rounded overflow-hidden shadow-lg hover:border hover:border-yellow-500">
            <img class="w-full" src="{{ $project->image }}" alt="Project Image">
            <div class="px-6 py-4">
                <div class="font-bold text-xl mb-2">{{ $project->name }}</div>
                <h3 class="font-bold text-xl">{{ $project->subtitle }}</h3>
                <p class="text-gray-700 text-base">{{ $project->desc }}</p>
            </div>
            <div class="px-6 pt-4 pb-2">
                <span class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
                    <a class="text-black" href="{{ $project->url }}">{{ $project->subtitle }}</a>
                </span>
            </div>
        </div>
        @endforeach
    </div>
</section>

<div class="flex justify-center items-center bg-gray-100">
    <!-- Modal container -->
    <div id="modal" class="fixed inset-0 z-10 hidden overflow-y-auto">
        <div class="flex items-center justify-center min-h-screen">
            <!-- Modal overlay -->
            <div class="fixed inset-0 bg-black opacity-50"></div>
            <!-- Modal content -->
            <div class="bg-white relative rounded shadow-lg p-6 z-20">
                <!-- Modal close button -->
                <button id="close_modal" class="absolute top-0 right-0 mt-4 mr-4 text-gray-600 hover:text-gray-800 cursor-pointer">
                    <i class="fa-solid text-sm fa-x"></i>
                </button>
                <!-- Modal content -->
                <div class="py-2 border-b-2">
                    <h1 class="text-2xl mb-4">Вработи наши студенти</h1>
                </div>
                <div class="py-3">
                    <p class="font-bold text-gray-400 text-sm">Внесете Ваши информации за да стапиме во контакт:</p>
                </div>
                <form class="grid grid-col-1 gap-3 p-2" method="POST" action="">
                    @csrf
                    <label for="company_email">Е-мејл</label>
                    <input class="border rounded border-gray-300 py-1" type="email" name="company_email" id="company_email">
                    <label for="company_phone">Телефон</label>
                    <input class="border rounded border-gray-300 py-1" type="text" name="company_phone" id="company_phone">
                    <label for="company_name">Компанија</label>
                    <input class="border rounded border-gray-300 py-1" type="text" name="company_name" id="company_name">
                    <button class="bg-yellow-500 rounded-md hover:bg-yellow-400 py-1 hover:text-white" type="submit">Испрати</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
