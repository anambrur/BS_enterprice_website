<?php
/**
 * Created by PhpStorm.
 * User: mrksohag
 * Date: 10/5/17
 * Time: 2:51 PM
 */
?>
@if ($paginator->hasPages())
    <div class="cr-pagination text-center">
        {{-- Previous Page Link --}}
        @if (!$paginator->onFirstPage())
            <a class="prev" href="{{ $paginator->previousPageUrl() }}">
                <img src="{!! asset('images/arrow-left.png') !!}" alt="">
            </a>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <a href="#">{{ $element }}</a>
            @endif
            {{-- Array Of Links --}}
            @if (is_array($element))
                <ul>
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li>
                                <a href="#">{{ $page }}</a>
                            </li>

                        <!-- <span class="current">{{ $page }}</span> -->
                        @else
                            <li>
                                <a href="{{ $url }}">{{ $page }}</a>
                            </li>
                        <!-- <a href="{{ $url }}">{{ $page }}</a> -->
                        @endif
                    @endforeach
                </ul>
            @endif
        @endforeach
        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <a class="next" href="{{ $paginator->nextPageUrl() }}">
                <img src="{!! asset('images/arrow-right.png') !!}" alt="">
            </a>
        @endif
    </div>
@endif