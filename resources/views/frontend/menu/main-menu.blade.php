<div class="main-menu f-right d-none d-lg-block">
    <nav>
        <ul id="navigation">
            @foreach($items as $item)
                <li>
                    <a href="{{ $item->link() }}">{{ $item->getTranslationsOf('title')[app()->getLocale()] }}</a>
                    @if(!$item->children->isEmpty())
                        <ul class="submenu">
                            @foreach($item->children as $item)
                                <li>
                                    <a href="{{ $item->link() }}">{{ $item->getTranslationsOf('title')[app()->getLocale()] }}</a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </li>
            @endforeach
        </ul>
    </nav>
</div>
