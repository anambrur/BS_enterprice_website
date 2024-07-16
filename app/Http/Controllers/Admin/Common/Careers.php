<?php

namespace App\Http\Controllers\Admin\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Common\Career;
use App\SM\SM;

class Careers extends Controller
{
    function index()
    {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Career';
        $data['rightButton']['link'] = 'careers/create';
        $data['pages'] = Career::orderBy('created_at', 'desc')
            ->paginate(config('constant.smPagination'));
        if (\request()->ajax()) {
            $json['data'] = view('sm-admin/common/career/careers', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['pages']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/career/index', $data);
    }

    function create()
    {
        $data['rightButton']['iconClass'] = 'fa fa-pagelines';
        $data['rightButton']['text'] = 'Carrer List';
        $data['rightButton']['link'] = 'carrers';

        return view('sm-admin/common/career/create', $data);
    }

    function store(Request $data)
    {
        $this->validate($data, [
            'title' => 'required',
        ]);
        $page = new Career();
        $page->title = $data['title'];
        $page->start_date = $data['start_date'];
        $page->end_date = $data['end_date'];
        if (isset($data->image) && $data->image != '') {
            $page->image = $data->image;
        }
        $page->content = $data['content'];
        if (SM::is_admin() || isset($permission) &&
            isset($permission['career']['career_status_update'])
            && $permission['career']['career_status_update'] == 1) {
            $page->status = $data->status;
        }

        $page->seo_title = $data->input("seo_title", "");
        $page->meta_key = $data['meta_key'];
        $page->meta_description = $data['meta_description'];
        $page->created_by = SM::current_user_id();
        $slug = (trim($data->slug) != '') ? $data->slug : $data->title;
        $page->slug = SM::create_uri('pages', $slug);
        $page->save();
        $this->removeThisCache();

        return redirect(config('constant.smAdminSlug') . '/careers')->with('s_message', 'Career successfully created!');
    }

    function show($id)
    {
//        return $id;
        $data['rightButton']['iconClass'] = 'fa fa-pagelines';
        $data['rightButton']['text'] = 'Career List';
        $data['rightButton']['link'] = 'careers';
        $data['career_info'] = Career::find($id);

        return view('sm-admin/common/career/show', $data);
    }

    function apply_show($id)
    {
//        return $id;
        $data['rightButton']['iconClass'] = 'fa fa-pagelines';
        $data['rightButton']['text'] = 'Career List';
        $data['rightButton']['link'] = 'careers';
        $data['pages'] = Career::find($id)
            ->paginate(config('constant.smPagination'));
        if (\request()->ajax()) {
            $json['data'] = view('sm-admin/common/career/career_apply/careers', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['pages']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/career/career_apply/index', $data);
    }

    function edit($id)
    {
        $data['rightButton']['iconClass'] = 'fa fa-pagelines';
        $data['rightButton']['text'] = 'Career List';
        $data['rightButton']['link'] = 'careers';
        $data['page_info'] = Career::find($id);

        return view('sm-admin/common/career/edit', $data);
    }

    function update(Request $data, $id)
    {
        $this->validate($data, [
            'title' => 'required',
        ]);
        $page = Career::find($id);
        // if ( count( $page ) > 0 ) {
        if (!empty($page)) {
            $this->removeThisCache($page->slug);
            $page->title = $data['title'];
            $page->start_date = $data['start_date'];
            $page->end_date = $data['end_date'];
            if (isset($data->image) && $data->image != '') {
                $page->image = $data->image;
            }
            $page->content = $data['content'];
            if (SM::is_admin() || isset($permission) &&
                isset($permission['career']['career_status_update'])
                && $permission['career']['career_status_update'] == 1) {
                $page->status = $data->status;
            }
            $page->seo_title = $data->input("seo_title", "");
            $page->meta_key = $data['meta_key'];
            $page->meta_description = $data['meta_description'];
            $page->modified_by = SM::current_user_id();
            $slug = (trim($data->slug) != '') ? $data->slug : $data->title;
            $page->slug = SM::create_uri('careers', $slug, $id);
            $page->save();

            return redirect(config('constant.smAdminSlug') . '/careers')->with('s_message', 'Career updated successfully!');
        } else {
            return redirect(config('constant.smAdminSlug') . '/careers')->with('w_message', 'Career update error occurs!');
        }
    }

    public function delete_page($id)
    {
        $page = Career::find($id);
        // if ( count( $page ) > 0 ) {
        if (!empty($page)) {
            $this->removeThisCache($page->slug);
            $page->delete();

            echo 1;
            exit;
        } else {
            echo 0;
            exit;
        }
    }

    public function career_status_update(Request $data)
    {
        $page = Career::find($data['post_id']);
        if ($page) {
            $page->status = $data['status'];
            $page->save();
            $this->removeThisCache($page->slug);
        }
        echo 1;
    }

    private function removeThisCache($slug = null)
    {
        if ($slug != null) {
            SM::removeCache('career_' . $slug);
        }
        SM::removeCache(['career'], 1);
    }
}
