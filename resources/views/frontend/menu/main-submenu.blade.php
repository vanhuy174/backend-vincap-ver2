<ul>
    @foreach($item->children as $item)
        <li class=" @if(!$item->children->isEmpty()) dropdown @endif {{ request()->routeIs($item->route) ? 'current' : '' }}"  >
            <a href="{{ $item->link() }}">{{ $item->translate()->title }}</a>
            @if(!$item->children->isEmpty())
                @include('frontend.menu.main-submenu')
            @endif
        </li>
    @endforeach
</ul>