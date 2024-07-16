@foreach($comments as $comment)
<div class="comment">
    <div class="blog-details-authoriamge">
        <img src="{!! SM::sm_get_the_src(  $comment->user->image , 95, 95) !!}">
    </div>
    <div class="comment__content">
        <div class="comment__content__top">
            <h6>{{ $comment->user->username }}</h6>
            <span>{{date("M d, Y", strtotime($comment->created_at))}}</span>
        </div>
        <a href="#" class="reply">Reply</a>
        <div class="comment__content__bottom">{!! stripslashes($comment->comments) !!}</div>

       {{-- <a href="" id="reply"></a>
              @guest
             <div class="alert alert-info"><i class="fa fa-info"></i> For post a new comment. You need to login first<a class="loginFromOpenBtn" href="#"> Login</a></div>
              @else
               <form method="post" action="{{ url('/replyComment') }}"> 
                   {!! csrf_field() !!} 
                  <div class="form-group">
                      <input type="text" name="comment_body" class="form-control" />
                      <input type="hidden" name="post_id" value="{{ $post_id }}" />
                      <input type="hidden" name="comment_id" value="{{ $comment->id }}" />
                  </div>
                  <div class="form-group">
                      <button type="submit" class="cr-btn">
                          <span>Reply</span>
                      </button>
                      <!-- <input type="submit" class="btn btn-warning" value="Reply" /> -->
                  </div>
              </form> 
              @endguest
              @include('partials._comment_replies', ['comments' => $comment->replies]) --}}
    </div>
</div>
@endforeach