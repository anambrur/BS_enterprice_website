<?php

namespace App\Http\Controllers\Admin\Common;

use App\Model\Common\Category;
use App\Model\Common\Package;
use App\Model\Common\Package_detail;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SM\SM;

class Packages extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['rightButton']['iconClass'] = 'fa fa-plus';
        $data['rightButton']['text'] = 'Add Package';
        $data['rightButton']['link'] = 'packages/create';
        $data['all_package'] = Package::orderBy("id", "desc")
            ->paginate(config("constant.smPagination"));

        if (\request()->ajax()) {
            $json['data'] = view('sm-admin/common/package/packages', $data)->render();
            $json['smPagination'] = view('sm-admin/common/common/pagination_links', [
                'smPagination' => $data['all_package']
            ])->render();

            return response()->json($json);
        }

        return view('sm-admin/common/package/manage_package', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['rightButton']['iconClass'] = 'fa fa-heart';
        $data['rightButton']['text'] = 'Package List';
        $data['rightButton']['link'] = 'packages';

        $data["all_categories"] = Category::where("parent_id", 0)->get();
        return view("sm-admin/common/package/add_package", $data);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//		echo "<pre>";
//		print_r($_POST);
//		echo "</pre>";
//		exit();
        $this->validate($request, [
            'title' => 'required|max:100',
            'type' => "required",
            'description' => "required",
            'seo_title' => 'max:70',
            'meta_description' => 'max:215'
        ]);
        $package = new Package();
        $package->title = $request->title;
        $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
        $package->slug = SM::create_uri('packages', $slug);
        $package->description = $request->description;
        $package->subtitle = $request->input("subtitle", "");
        $package->requirements = $request->input("requirements", "");
        $package->created_by = SM::current_user_id();
        $package->mover_img = $request->input("mover_img", "");
        $package->seo_title = $request->input("seo_title", "");
        $package->meta_key = $request->input("meta_key", "");
        $package->meta_description = $request->input("meta_description", "");
        $package->extra = SM::sm_serialize($request->input('extra', []));
        $type = $package->type = $request->type;
        if (SM::is_admin() || isset($permission) &&
            isset($permission['packages']['package_status_update'])
            && $permission['packages']['package_status_update'] == 1) {
            $package->status = $request->status;
        }
        if (isset($request->image) && $request->image != '') {
            $package->image = $request->image;
        }
        if ($type == 2 || $type == 3) {
            $package->save();
            $package_id = $package->id;
        }

        if ($type == 2) {
            $content = $request->pricing_detail_2;
            $pcd = $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                'BASIC',
                'SILVER',
                'GOLD'
            ], '', 'pricing_info_title');

        } elseif ($type == 3) {
            $content = $request->pricing_detail_3;
            $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                'BASIC',
                'SILVER',
                'GOLD'
            ], 1, 'pricing_info_title');

            $this->addPackageDetail($package_id, [4, 5, 6], $content, ['basic', 'silver', 'gold'], [
                'BASIC',
                'SILVER',
                'GOLD'
            ], 2, 'pricing_info_title');


            $this->addPackageDetail($package_id, [7, 8, 9], $content, ['basic', 'silver', 'gold'], [
                'BASIC',
                'SILVER',
                'GOLD'
            ], 3, 'pricing_info_title');
        } elseif ($type == 4) {
            $pricing_detail_4 = $request->pricing_detail_4;
            $data['pricing_title'] = (isset($pricing_detail_4['pricing_title'])) ? $pricing_detail_4['pricing_title'] : '';
            $data['pricing_subtitle'] = (isset($pricing_detail_4['pricing_subtitle'])) ? $pricing_detail_4['pricing_subtitle'] : '';
            $data['pricing_calculator_title'] = (isset($pricing_detail_4['pricing_calculator_title'])) ? $pricing_detail_4['pricing_calculator_title'] : '';
            $data['pricing_calculator_subtitle'] = (isset($pricing_detail_4['pricing_calculator_subtitle'])) ? $pricing_detail_4['pricing_calculator_subtitle'] : '';
            $pricing_content4 = (isset($pricing_detail_4['pricing_content'])) ? $pricing_detail_4['pricing_content'] : array();
            $package->pricing_detail = SM::sm_serialize($data);


            $package->save();
            $package_id = $package->id;

            if ($package_id && count($pricing_content4) > 0) {
                foreach ($pricing_content4 as $contentJson) {
                    $content = is_string($contentJson) && $contentJson != '' ? json_decode($contentJson, true) : array();
                    $packageDetail = new Package_detail();
                    $packageDetail->package_id = $package_id;
                    $packageDetail->title = (isset($content["pricing_title"])) ? $content["pricing_title"] : "";
                    $packageDetail->words = (isset($content["words"])) ? (int)$content["words"] : 100;
                    $packageDetail->price = (isset($content["price"])) ? (float)$content["price"] : 0;
                    $packageDetail->price_type = 1;
                    $packageDetail->isIncluded = (isset($content["isIncluded"]) && $content["isIncluded"] == 1) ? 1 : 0;
                    $packageDetail->save();
                }
            }
        } elseif ($type == 5) {
            $content = $request->pricing_detail_5;
            $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
            $package->pricing_detail = SM::sm_serialize($data);

            $package->save();
            $package_id = $package->id;

            $pkgd = $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                'STARTER',
                'STANDARD',
                'ADVANCED'
            ]);

        } elseif ($type == 6) {
            $content = $request->pricing_detail_6;
            $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
            $package->pricing_detail = SM::sm_serialize($data);

            $package->save();
            $package_id = $package->id;

            $this->addPackageDetail($package_id, [1, 2, 3, 4], $content, ['basic', 'silver', 'gold', 'premium'], [
                'STARTER',
                'STANDARD',
                'ADVANCED',
                'PREMIUM'
            ]);
        } elseif ($type == 8) {
            $content = $request->pricing_detail_8;
            $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
            $package->pricing_detail = SM::sm_serialize($data);

            $package->save();
            $package_id = $package->id;

            $this->addPackageDetail($package_id, [1, 2, 3, 4, 5, 6, 7, 8], $content, ['plan1', 'plan2', 'plan3', 'plan4', 'plan5', 'plan6', 'plan7', 'plan8'], [
                'PLAN1',
                'PLAN2',
                'PLAN3',
                'PLAN4',
                'PLAN5',
                'PLAN6',
                'PLAN7',
                'PLAN8'
            ]);
        } else {
            $content = $request->pricing_detail_1;
            $package->pricing_detail = isset($content['particular_title']) ? $content['particular_title'] : '';
            $package->save();
            $package_id = $package->id;

            $this->addPackageDetail($package_id, [1, 2], $content, ['advanced', 'professional'], [
                'ADVANCED',
                'PROFESSIONAL'
            ], '', 'particular_title');
        }

        $this->removeThisCache();

        // if ($package->save()) {
            foreach ($request->categories as $cat) {
                $categories[$cat]['created_at'] = date("Y-m-d H:i:s");
                $categories[$cat]['updated_at'] = date("Y-m-d H:i:s");
                $catInfo = Category::find($cat);
                if (!empty($catInfo)) {
                    // if ( count( $catInfo ) > 0 ) {
                    $catInfo->increment("total_posts");
                }
            }
            $package->categories()->attach($categories);
        // }
        if ($package->id) {
            return redirect(SM::smAdminSlug("packages/$package->id/edit"))
                ->with("s_message", "Package Successfully Saved!");
        } else {
            return redirect(SM::smAdminSlug("packages"))
                ->with("s_message", "Package Save Failed!");
        }

    }

    private function processPriceInfoToSingle($data, $return, $withExtra = '')
    {
        $newReturn = [];
        if (count($data) > 0) {
            foreach ($data as $loop => $single) {
                $singleA = json_decode($single, true);
                if (count($singleA) > 0) {
                    foreach ($singleA as $key => $value) {
                        if ($key == 'sub' && is_array($value) && count($value) > 0) {
                            foreach ($value as $subLoop => $singleSub) {
                                if ($singleSub != '') {
                                    $singleSubA = is_string($singleSub) ? json_decode($singleSub, true) : $singleSub;
                                    if (count($singleSubA) > 0) {
                                        foreach ($singleSubA as $keySub => $valueSub) {
                                            if ($keySub != 'sub') {
                                                if ($withExtra == $keySub) {
                                                    foreach ($return as $returnIndex) {
                                                        $newReturn[$returnIndex][$loop]["sub"][$subLoop][$withExtra] = $valueSub;
                                                    }
                                                } else {
                                                    foreach ($return as $returnIndex) {
                                                        if ($returnIndex == $keySub) {
                                                            $newReturn[$returnIndex][$loop]["sub"][$subLoop][$returnIndex] = $valueSub;
                                                            break;
                                                        }
                                                    }
                                                }


                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if ($withExtra == $key) {
                                foreach ($return as $returnIndex) {
                                    $newReturn[$returnIndex][$loop][$withExtra] = $value;
                                }
                            } else {
                                foreach ($return as $returnIndex) {
                                    if ($returnIndex == $key) {
                                        $newReturn[$returnIndex][$loop][$returnIndex] = $value;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            foreach ($return as $returnIndex) {
                $newReturn[$returnIndex] = [];
            }
        }

        return $newReturn;
    }


    private function createPackageJson($data)
    {
        $return = [];
        if (count($data) > 0) {
            foreach ($data as $single) {
                if (is_array($single)) {
                    $single = (object)$single;
                }
                $details = ($single->details != '') ? json_decode($single->details, true) : [];
                if (!empty($details)) {
//                    if (count($details) > 0) {
                    foreach ($details as $loop => $detail) {
                        foreach ($detail as $key => $value) {
                            if (is_array($value) && count($value) > 0) {
                                foreach ($value as $loop1 => $detail1) {
                                    foreach ($detail1 as $key1 => $value1) {
                                        $return[$loop][$key][$loop1][$key1] = $value1;
                                    }
                                }
                            } else {
                                $return[$loop][$key] = $value;
                            }
                        }
                    }
                }
            }
        }

        return $return;
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $data['package_info'] = Package::with("categories")->find($id);
        // if ( count( $data['package_info'] ) > 0 ) {
        if (!empty($data['package_info'])) {
            $data['rightButton']['iconClass'] = 'fa fa-heart';
            $data['rightButton']['text'] = 'Package List';
            $data['rightButton']['link'] = 'packages';
            $data['rightButton2']['iconClass'] = 'fa fa-eye';
            $data['rightButton2']['text'] = 'View';
            $data['rightButton2']['link'] = "packages/" . $data['package_info']->slug;

            $data['package_info']->extra = SM::sm_unserialize($data['package_info']->extra);
            $data['package_info']->content = Package_detail::where("package_id", $id)
                ->orderBy('sorting_position', 'asc')
                ->get();

            $data['package_info']->categories = SM::get_ids_from_data($data['package_info']->categories);
            $data['all_categories'] = Category::where('parent_id', 0)->get();

            if ($data['package_info']->type == 3) {
                $lp = 1;
                for ($loop = 0; $loop < count($data['package_info']->content); $loop = $loop + 3) {
                    $pricing_name = "pricing_info" . $lp;
                    $content = array_slice($data['package_info']->content->toArray(), $loop, $loop + 3);
                    $data['package_info']->$pricing_name = $this->createPackageJson($content);
                    $lp++;
                }
            } else {
                $data['package_info']->pricing_info = $this->createPackageJson($data['package_info']->content);
            }
//			echo "<pre>";
//			print_r($data['package_info']->content);
//			echo "</pre>";
//			exit();
            return view("sm-admin/common/package/edit_package", $data);
        } else {

            return back()->with("w_message", "Package not found!");
        }
    }

    private function addPackageDetail($package_id, $sortingPosition, $content, $pricingInfos, $defaults, $priceExtra = '', $withExtra = '')
    {
        $typeExtra = ($priceExtra == '') ? '' : '_' . $priceExtra;
        $data = isset($content['pricing_info' . $typeExtra]) ? $content['pricing_info' . $typeExtra] : array();
        $details = $this->processPriceInfoToSingle($data, $pricingInfos, $withExtra);
        $packageDetail_id = [];
//		echo "<pre>";
//		print_r($content);
//		print_r($pricingInfos);
//		print_r($details);
        if (count($pricingInfos) > 0) {
            $loop = 0;
            foreach ($pricingInfos as $info) {
                $idKey = "pd_id_price_" . $info . $priceExtra;
                $id = (isset($content[$idKey])) ? (int)$content[$idKey] : 0;
                if ($id > 0) {
                    $packageDetail = Package_detail::find($id);
                    if (!$packageDetail) {
                        $packageDetail = new Package_detail();
                    }
                } else {
                    $packageDetail = new Package_detail();
                }
                $packageDetail->package_id = $package_id;
                $packageDetail->sorting_position = $sortingPosition[$loop];
                $packageDetail->title = (isset($content[$info . "_pricing_title"])) ? $content[$info . "_pricing_title"] : $defaults[$loop];
                $packageDetail->price = (isset($content["price_" . $info . $priceExtra])) ? (float)$content["price_" . $info . $priceExtra] : 0;
                $typeExtra = ($priceExtra == '') ? '' : '_' . $priceExtra;
                $packageDetail->price_type = (isset($content["price_type" . $typeExtra])) ? (int)$content["price_type" . $typeExtra] : 1;
                $packageDetail->details = json_encode(isset($details[$info]) ? $details[$info] : []);
//				print_r($packageDetail);
                $packageDetail->save();
                $packageDetail_id[] = $packageDetail->id;
                $loop++;
            }

        }

        return $packageDetail_id;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(
        Request $request, $id
    )
    {
        $this->validate($request, [
            'title' => 'required|max:100',
            'type' => "required",
            'description' => "required",
            'seo_title' => 'max:70',
            'meta_description' => 'max:215'
        ]);
        $package = Package::find($id);
        // if ( count( $package ) > 0 ) {
        if (!empty($package)) {
            $this->removeThisCache($package->slug);

            $package->title = $request->title;
            $slug = (trim($request->slug) != '') ? $request->slug : $request->title;
            $package->slug = SM::create_uri('packages', $slug, $id);
            $package->description = $request->description;
            $package->subtitle = $request->input("subtitle", "");
            $package->requirements = $request->input("requirements", "");
            $package->created_by = SM::current_user_id();
            $package->mover_img = $request->input("mover_img", "");
            $package->seo_title = $request->input("seo_title", "");
            $package->meta_key = $request->input("meta_key", "");
            $package->meta_description = $request->input("meta_description", "");
            $package->extra = SM::sm_serialize($request->input('extra', []));

            if ($package->type != $request->type) {
                Package_detail::where("package_id", $id)
                    ->delete();
            }
            $type = $package->type = $request->type;


            if (SM::is_admin() || isset($permission) &&
                isset($permission['packages']['package_status_update'])
                && $permission['packages']['package_status_update'] == 1) {
                $package->status = $request->status;
            }
            if (isset($request->image) && $request->image != '') {
                $package->image = $request->image;
            }
            $package_id = $package->id;


            $pricing_content4 = [];

            if ($type == 2) {
                $content = $request->pricing_detail_2;
                $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                    'BASIC',
                    'SILVER',
                    'GOLD'
                ], '', 'pricing_info_title');
            } elseif ($type == 3) {
                $content = $request->pricing_detail_3;
                $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                    'BASIC',
                    'SILVER',
                    'GOLD'
                ], 1, 'pricing_info_title');

                $this->addPackageDetail($package_id, [4, 5, 6], $content, ['basic', 'silver', 'gold'], [
                    'BASIC',
                    'SILVER',
                    'GOLD'
                ], 2, 'pricing_info_title');


                $this->addPackageDetail($package_id, [7, 8, 9], $content, ['basic', 'silver', 'gold'], [
                    'BASIC',
                    'SILVER',
                    'GOLD'
                ], 3, 'pricing_info_title');
            } elseif ($type == 4) {
                $pricing_detail_4 = $request->pricing_detail_4;
                $data['pricing_title'] = (isset($pricing_detail_4['pricing_title'])) ? $pricing_detail_4['pricing_title'] : '';
                $data['pricing_subtitle'] = (isset($pricing_detail_4['pricing_subtitle'])) ? $pricing_detail_4['pricing_subtitle'] : '';
                $data['pricing_calculator_title'] = (isset($pricing_detail_4['pricing_calculator_title'])) ? $pricing_detail_4['pricing_calculator_title'] : '';
                $data['pricing_calculator_subtitle'] = (isset($pricing_detail_4['pricing_calculator_subtitle'])) ? $pricing_detail_4['pricing_calculator_subtitle'] : '';
                $pricing_content4 = (isset($pricing_detail_4['pricing_content'])) ? $pricing_detail_4['pricing_content'] : array();
                $package->pricing_detail = SM::sm_serialize($data);
            } elseif ($type == 5) {
                $content = $request->pricing_detail_5;
                $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
                $package->pricing_detail = SM::sm_serialize($data);

                $pckgd = $this->addPackageDetail($package_id, [1, 2, 3], $content, ['basic', 'silver', 'gold'], [
                    'STARTER',
                    'STANDARD',
                    'ADVANCED'
                ]);
            } elseif ($type == 6) {
                $content = $request->pricing_detail_6;
                $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
                $package->pricing_detail = SM::sm_serialize($data);

                $package->save();
                $package_id = $package->id;

                $this->addPackageDetail($package_id, [1, 2, 3, 4], $content, ['basic', 'silver', 'gold', 'premium'], [
                    'STARTER',
                    'STANDARD',
                    'ADVANCED',
                    'PREMIUM'
                ]);
            } elseif ($type == 8) {
                $content = $request->pricing_detail_8;
                $data = (isset($content['subtitle'])) ? $content['subtitle'] : array();
                $package->pricing_detail = SM::sm_serialize($data);

                $package->save();
                $package_id = $package->id;

                $this->addPackageDetail($package_id, [1, 2, 3, 4, 5, 6, 7, 8], $content, ['plan1', 'plan2', 'plan3', 'plan4', 'plan5', 'plan6', 'plan7', 'plan8'], [
                    'PLAN1',
                    'PLAN2',
                    'PLAN3',
                    'PLAN4',
                    'PLAN5',
                    'PLAN6',
                    'PLAN7',
                    'PLAN8'
                ]);
            } else {
                $content = $request->pricing_detail_1;
                $package->pricing_detail = isset($content['particular_title']) ? $content['particular_title'] : '';

                $this->addPackageDetail($package_id, [1, 2], $content, ['advanced', 'professional'], [
                    'ADVANCED',
                    'PROFESSIONAL'
                ], '', 'particular_title');
            }


            $newPackageDetailIds = [];
            if ($package_id && $type == 4 && count($pricing_content4) > 0) {
                $sortingPosition = 1;
                foreach ($pricing_content4 as $contentJson) {
                    $content = is_string($contentJson) && $contentJson != '' ? json_decode($contentJson, true) : array();
                    if (isset($content['pd_id']) && $content['pd_id'] != 0) {
                        $packageDetail = Package_detail::find($content['pd_id']);
                        if (count($packageDetail) > 0) {
                            $newPackageDetailIds[] = $packageDetail->id;

                            $packageDetail->package_id = $package_id;
                            $packageDetail->sorting_position = $sortingPosition;
                            $packageDetail->title = (isset($content["pricing_title"])) ? $content["pricing_title"] : "";
                            $packageDetail->words = (isset($content["words"])) ? (float)$content["words"] : 100;
                            $packageDetail->price = (isset($content["price"])) ? (float)$content["price"] : 0;
                            $packageDetail->price_type = 1;
                            $packageDetail->isIncluded = (isset($content["isIncluded"]) && $content["isIncluded"] == 1) ? 1 : 0;
                            $packageDetail->update();
                        } else {
                            $packageDetail = new Package_detail();
                            $packageDetail->package_id = $package_id;
                            $packageDetail->sorting_position = $sortingPosition;
                            $packageDetail->title = (isset($content["pricing_title"])) ? $content["pricing_title"] : "";
                            $packageDetail->words = (isset($content["words"])) ? (float)$content["words"] : 100;
                            $packageDetail->price = (isset($content["price"])) ? (float)$content["price"] : 0;
                            $packageDetail->price_type = 1;
                            $packageDetail->isIncluded = (isset($content["isIncluded"]) && $content["isIncluded"] == 1) ? 1 : 0;
                            $packageDetail->save();

                            $newPackageDetailIds[] = $packageDetail->id;
                        }

                    } else {
                        $packageDetail = new Package_detail();
                        $packageDetail->package_id = $package_id;
                        $packageDetail->sorting_position = $sortingPosition;
                        $packageDetail->title = (isset($content["pricing_title"])) ? $content["pricing_title"] : "";
                        $packageDetail->words = (isset($content["words"])) ? (float)$content["words"] : 100;
                        $packageDetail->price = (isset($content["price"])) ? (float)$content["price"] : 0;
                        $packageDetail->price_type = 1;
                        $packageDetail->isIncluded = (isset($content["isIncluded"]) && $content["isIncluded"] == 1) ? 1 : 0;
                        $packageDetail->save();

                        $newPackageDetailIds[] = $packageDetail->id;
                    }
                    $sortingPosition++;
                }
            }


            if ($package->update() > 0) {
            $oldCatIds = SM::get_ids_from_data( $package->categories );
            foreach ( $request->categories as $cat ) {
                $categories[ $cat ]['created_at'] = date( "Y-m-d H:i:s" );
                $categories[ $cat ]['updated_at'] = date( "Y-m-d H:i:s" );
                if ( ! in_array( $cat, $oldCatIds ) ) {
                    $catInfo = Category::find( $cat );
                    // if ( count( $catInfo ) > 0 ) {
                    if ( !empty($catInfo) ) {
                        $catInfo->increment( "total_posts" );
                    }
                }
            }
            $package->categories()->sync( $categories );

                return redirect(SM::smAdminSlug("packages/$id/edit"))->with("s_message", "Package Updated Successfully!");
            } else {
                return redirect(SM::smAdminSlug("packages"))->with("s_message", "Package Update Failed!");
            }
        } else {
            return back()->with("w_message", "Package not found!");
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $package = Package::with('detail')->find($id);
        if (!empty($package)) {
//            if (count($package) > 0) {
            $this->removeThisCache($package->slug);
            if (!empty($package->detail)) {
//                if (count($package->detail) > 0) {
                foreach ($package->detail as $detail) {
                    $detail->delete();
                }
            }
            if ($package->delete() > 0) {
                 $package->categories()->detach();
                return response(1);
            }
        }

        return response(0);
    }

    /**
     * status change the specified resource from storage.
     *
     * @param  Request $request
     *
     * @return null
     */
    public function package_status_update(Request $request)
    {
        $this->validate($request, [
            "post_id" => "required",
            "status" => "required",
        ]);

        $package = Package::find($request->post_id);
        if (count($package) > 0) {
            $this->removeThisCache($package->slug);
            $package->status = $request->status;
            $package->update();
        }
        exit;
    }

    private function removeThisCache($slug = null)
    {
        if ($slug != null) {
            SM::removeCache('package_' . $slug);
            SM::removeCache('package_detail_' . $slug);
        }
        SM::removeCache(['package'], 1);
    }
}
