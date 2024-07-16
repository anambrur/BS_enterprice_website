@php
    $edit_category = SM::check_this_method_access('categories', 'edit') ? 1 : 0;
    $category_status_update = SM::check_this_method_access('categories', 'category_status_update') ? 1 : 0;
    $delete_category = SM::check_this_method_access('categories', 'destroy') ? 1 : 0;
    $per = $edit_category + $delete_category;
@endphp

@if ($all_category)
    @php $sl = 1; @endphp
    @foreach ($all_category as $category)
        <tr id="tr_{{ $category->id }}">
            <td>{{ $sl }}</td>
            <td>{{ $category->title }}</td>
            <td>
                <img class="img-blog" src="{{ asset('storage/uploads/' . $category->image) }}" width="40px"
                    alt="{{ $category->title }}" />
            </td>
            @if ($category_status_update != 0)
                <td class="text-center">
                    <select class="form-control change_status"
                        route="{{ config('constant.smAdminSlug') }}/categories/category_status_update"
                        post_id="{{ $category->id }}">
                        <option value="1" @if ($category->status == 1) selected="selected" @endif>Published
                        </option>
                        <option value="2" @if ($category->status == 2) selected="selected" @endif>Pending
                        </option>
                        <option value="3" @if ($category->status == 3) selected="selected" @endif>Canceled
                        </option>
                    </select>
                </td>
            @endif
            @if ($per != 0)
                <td class="text-center">
                    @if ($edit_category != 0)
                        <a href="{{ url(config('constant.smAdminSlug') . '/categories') }}/{{ $category->id }}/edit"
                            title="Edit" class="btn btn-xs btn-default" id="">
                            <i class="fa fa-pencil"></i>
                        </a>
                    @endif
                    @if ($delete_category != 0)
                        <a href="{{ url(config('constant.smAdminSlug') . '/categories/destroy') }}/{{ $category->id }}"
                            title="Delete" class="btn btn-xs btn-default delete_data_row"
                            delete_message="Are you sure to delete this Category?" delete_row="tr_{{ $category->id }}">
                            <i class="fa fa-times"></i>
                        </a>
                    @endif
                </td>
            @endif
        </tr>
        @php
            $sl++;
            SM::category_tree_for_category_table($category->id);
        @endphp
    @endforeach
@endif
