@php
    $edit_slider = SM::check_this_method_access('sliders', 'edit_slider') ? 1 : 0;
    $slider_status_update = SM::check_this_method_access('sliders', 'slider_status_update') ? 1 : 0;
    $delete_slider = SM::check_this_method_access('sliders', 'delete_slider') ? 1 : 0;
    $per = $edit_slider + $delete_slider;
@endphp

@if ($sliders)
    @php $sl = 1; @endphp
    @foreach ($sliders as $slider)
        <tr id="tr_{{ $slider->id }}">
            <td>{{ $sl }}</td>
            <td>
                {{ $slider->title }}
            </td>
            <td>
                <img class="img-blog" src="{{ SM::sm_get_the_src($slider->image, 80, 80) }}" width="80px"
                    alt="slider" />
            </td>
            @if ($slider_status_update != 0)
                <td class="text-center">
                    <select class="form-control change_status"
                        route="{{ config('constant.smAdminSlug') }}/sliders/slider_status_update"
                        post_id="{{ $slider->id }}">
                        <option value="1" @if ($slider->status == 1) selected="selected" @endif>Published
                        </option>
                        <option value="2" @if ($slider->status == 2) selected="selected" @endif>Pending
                        </option>
                        <option value="3" @if ($slider->status == 3) selected="selected" @endif>Canceled
                        </option>
                    </select>
                </td>
            @endif
            @if ($per != 0)
                <td class="text-center">
                    @if ($edit_slider != 0)
                        <a href="{{ url(config('constant.smAdminSlug') . '/sliders/edit_slider') }}/{{ $slider->id }}"
                            title="Edit" class="btn btn-xs btn-default" id="">
                            <i class="fa fa-pencil"></i>
                        </a>
                    @endif
                    @if ($delete_slider != 0)
                        <a href="{{ url(config('constant.smAdminSlug') . '/sliders/delete_slider') }}/{{ $slider->id }}"
                            title="Delete" class="btn btn-xs btn-default delete_data_row"
                            delete_message="Are you sure to delete this Slider?" delete_row="tr_{{ $slider->id }}">
                            <i class="fa fa-times"></i>
                        </a>
                    @endif
                </td>
            @endif
        </tr>
        @php $sl++; @endphp
    @endforeach
@endif
