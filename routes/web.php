<?php

use App\Http\Controllers\BannerController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Models\Banner;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    $products = Product::query()->latest('id')->with('category')->limit(30)->get();
    $data_banner = Banner::orderBy('id', 'desc')->first();
    if (Auth::user()) {
        $user = Auth::user()->id;
        $cart = Cart::where('user_id', $user)->first();
        $totalAmount = 0;
        $productVariants = $cart->cartItems()
            ->join('product_variants', 'product_variants.id', '=', 'cart_items.product_variant_id')
            ->join('products', 'products.id', '=', 'product_variants.product_id')
            ->join('product_sizes', 'product_sizes.id', '=', 'product_variants.product_size_id')
            ->join('product_colors', 'product_colors.id', '=', 'product_variants.product_color_id')
            ->get([
                'product_variants.id as product_variant_id', 'products.name as product_name',
                'products.sku as product_sku', 'products.img_thumb as product_img_thumb',
                'products.price as product_price', 'products.price_sale as product_price_sale',
                'product_sizes.name as variant_size_name', 'product_colors.name as variant_color_name',
                'cart_items.quantity as quantity'
            ]);
        foreach (collect($productVariants) as $item) {
            $totalAmount += $item['quantity'] * ($item['product_price_sale'] ?: $item['product_price']);
        }
        $userId = $cart->user_id;
        return view('welcome', compact('products', 'data_banner', 'totalAmount', 'productVariants', 'userId'));
    }else{
        return view('auth.login',compact('products', 'data_banner'));
    }
})->name('welcome');
Route::get('/danh-muc', function () {
    $products = Product::query()->latest('id')->with('category')->limit(30)->get();
    $data_banner = Banner::orderBy('id', 'desc')->first();
    $user = Auth::user()->id;
    $cart = Cart::where('user_id', $user)->first();
    $totalAmount = 0;
    $productVariants = $cart->cartItems()
        ->join('product_variants', 'product_variants.id', '=', 'cart_items.product_variant_id')
        ->join('products', 'products.id', '=', 'product_variants.product_id')
        ->join('product_sizes', 'product_sizes.id', '=', 'product_variants.product_size_id')
        ->join('product_colors', 'product_colors.id', '=', 'product_variants.product_color_id')
        ->get([
            'product_variants.id as product_variant_id', 'products.name as product_name',
            'products.sku as product_sku', 'products.img_thumb as product_img_thumb',
            'products.price as product_price', 'products.price_sale as product_price_sale',
            'product_sizes.name as variant_size_name', 'product_colors.name as variant_color_name',
            'cart_items.quantity as quantity'
        ]);
    foreach (collect($productVariants) as $item) {
        $totalAmount += $item['quantity'] * ($item['product_price_sale'] ?: $item['product_price']);
    }
    $userId = $cart->user_id;
    return view('danh-muc', compact('products', 'data_banner', 'totalAmount', 'productVariants', 'userId'));
})->name('danh-muc');
// CHi tiết sản phẩm
Route::get('product/{slug}', [\App\Http\Controllers\ProductController::class, 'detail'])
    ->name('product.detail');

// Mua hàng
Route::post('cart/add', [\App\Http\Controllers\CartController::class, 'add'])->name('cart.add');
Route::get('cart/list', [\App\Http\Controllers\CartController::class, 'list'])->name('cart.list');
Route::post('order/add', [\App\Http\Controllers\OrderController::class, 'add'])->name('order.add');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
