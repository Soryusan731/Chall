<header class=" bg-yellow-500">
    <nav class="flex justify-between md:mx-auto md:w-4/5 items-center md:relative py-4 md:py-3">
    <div class="flex-col justify-center md:mx-0 mx-auto">
      <img class="mx-auto w-10 " src="{{ asset('image/logo_footer_black.png') }}" alt="logo">
      <a class="font-bold text-xs" href="/">BRAINSTER</a>
    </div>
    <div id="menu" class="border md:hidden border-black rounded-md mr-2">
    <i class="fa-solid text-2xl p-1 fa-bars  hover:bg-yellow-300 hover:bg-opacity-50 rounded-md"></i>
    </div>
    <ul id="nav_menu" class="md:flex  md:static absolute hidden text-center  z-9   bg-yellow-500 transition-all ">
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 hover:underline hover:transition-all rounded-xl"><a target="_blank" href="https://brainster.co/full-stack/">Академија за <br> Програмирање</a></li>
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl"><a target="_blank" href="https://brainster.co/marketing/?gclid=CjwKCAiA-bmsBhAGEiwAoaQNmqAAFzV9A09JfUyyrswYzIcuOkgZU5HJczeDmTyPUzCVurkTteTV_xoC2d8QAvD_BwE">Академија за <br> Маркетинг</a></li>
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl" ><a target="_blank" href="https://brainster.co/graphic-design/">Академија за<br> Дизајн</a></li>
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl"><a target="_blank" href="https://blog.brainster.co/">Блог</a></li>
      <li id="open_modal" class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl"><a href="#"></a>Вработи наши<br>  студенти</li>
      @if(session()->has('admin_id'))
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl"><a href="{{route('logout')}}">Одлогирај <br> се</a></li>
      @else
      <li class="px-3 hover:bg-yellow-300 hover:bg-opacity-50 rounded-xl"><a href="{{route('login')}}">Логирај <br> се</a></li>
      @endif
    </ul>
    </nav>
  </header>