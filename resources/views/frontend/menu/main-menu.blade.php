<nav class="main-menu">
    <div class="navbar-header">
        <!-- Toggle Button -->
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse clearfix">
        <ul class="navigation">
            @foreach($items as $item)
            <li class=" @if(!$item->children->isEmpty()) dropdown @endif {{ request()->routeIs($item->route) ? 'current' : '' }}">
                <a href="{{ $item->link() }}">{{ $item->translate()->title }}</a>
                @if(!$item->children->isEmpty())
                @include('frontend.menu.main-submenu', ['item' => $item])
                @endif
            </li>
            @endforeach
        </ul>
    </div>
</nav>
