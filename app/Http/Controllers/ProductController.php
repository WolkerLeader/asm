<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    //
    public function detail($slug)
    {
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
        $product = Product::query()->where('slug', $slug)
            ->with(['variants', 'category', 'galleries'])->first();
        $productVariant = $product->variants->all();
        $colorIds = [];
        $sizeIds = [];
        foreach ($productVariant as $item) {
            $colorIds[] = $item->product_color_id;
            $sizeIds[] = $item->product_size_id;
        }
        $colors = ProductColor::query()->whereIn('id', $colorIds)
            ->pluck('name', 'id')->all();
        $sizes = ProductSize::query()->whereIn('id', $sizeIds)
            ->pluck('name', 'id')->all();
        return view('product-detail', compact('product', 'colors', 'sizes', 'productVariants', 'totalAmount'));
    }

    public function bruh()
    {
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
        return redirect()->route('/', compact('totalAmount', 'productVariants', 'userId'));
    }
}
