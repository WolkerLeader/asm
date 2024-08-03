<?php

namespace App\Http\Controllers\Admin;

use App\Models\Banner;
use App\Http\Requests\StoreBannerRequest;
use App\Http\Requests\UpdateBannerRequest;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Banner::all();
        return view('admin.banner.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreBannerRequest $request)
    {
        $data = $request->except('image');
        if ($request->hasFile('image')) {
            $data['image'] =  Storage::put('banners', $request->file('image'));
        } else {
            $data['image'] = '';
        }

        Banner::query()->create($data);
        return redirect()->route('admin.banners.index')->with('message', 'Thêm mới thành công');
        // $fileName = $request->photo->getClientOriginalName();
        // $request->photo->storeAs('public/images', $fileName);
        // $request->merge(['image' => $fileName]);
        // try {
        //     $banner = Banner::create($request->all());
        //     return redirect()->route('admin.banners.index')->with('message', 'Thêm mới thành công');
        // } catch (\Throwable $th) {
        //     dd($th->getMessage());
        // }
    }

    /**
     * Display the specified resource.
     */
    public function show(Banner $banner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Banner $banner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBannerRequest $request, Banner $banner)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Banner $banner)
    {
        $banner->delete();
        return back()->with('message', 'Xóa thành công');
    }
}
