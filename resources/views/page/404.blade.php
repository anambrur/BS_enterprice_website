@extends("frontend.master")
@section("title", "404 - Not Found")
@section("content")
    <section class="common-section bg-black error-page-section">
        <div class="container">
            <div class="row">

                <div class="seo-score-img" style="left: 205px;"><img src="{!! url('/error_bg_01.png') !!}" alt=""></div>
                <div class="seo-score-img" style="left: 0; bottom: 0"><img src="{!! url('/error_bg_02.png') !!}" alt="">
                </div>
                <div class="seo-score-img" style="right: 0;bottom: 0;z-index: 1"><img
                            src="{!! url('/error_bg_03.png') !!}"
                            alt=""></div>
                <div class="seo-score-img" style="right: 0; bottom: -106px"><img src="{!! url('/error_bg_04.png') !!}"
                                                                                 alt="">
                </div>

                <div class="col-lg-12">
                    <div class="error-page-content">
                        <img src="/images/error_img.png" alt="">
                        <h3>Opps! Error...page not found</h3>
<!--                        <div class="error-search-form">
                            <form action="{!! url("search") !!}" method="get">
                                <input name="s" type="search" placeholder="Search your keyword...">
                                <button type="submit"><i class="fa fa-search"></i></button>
                                <div class="error-select-opt">
                                    <select id="search_type" name="type">
                                        <option selected="">Package</option>
                                        <option>Blog</option>
                                        <option>Service</option>
                                        <option>Case</option>
                                    </select>
                                </div>
                            </form>
                        </div>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection