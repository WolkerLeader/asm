<?php

namespace App\Providers;

use App\Models\Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // view()->composer('*', function ($view) {
        //     if (Auth::user()) {
        //         # code...
        //     }
        //     $cart = Cart::where('user_id', $user)->first();
        //     $totalAmount = 0;
        //     $productVariants = $cart->cartItems()
        //         ->join('product_variants', 'product_variants.id', '=', 'cart_items.product_variant_id')
        //         ->join('products', 'products.id', '=', 'product_variants.product_id')
        //         ->join('product_sizes', 'product_sizes.id', '=', 'product_variants.product_size_id')
        //         ->join('product_colors', 'product_colors.id', '=', 'product_variants.product_color_id')
        //         ->get([
        //             'product_variants.id as product_variant_id', 'products.name as product_name',
        //             'products.sku as product_sku', 'products.img_thumb as product_img_thumb',
        //             'products.price as product_price', 'products.price_sale as product_price_sale',
        //             'product_sizes.name as variant_size_name', 'product_colors.name as variant_color_name',
        //             'cart_items.quantity as quantity'
        //         ]);
        //     foreach (collect($productVariants) as $item) {
        //         $totalAmount += $item['quantity'] * ($item['product_price_sale'] ?: $item['product_price']);
        //     }
        //     $userId = $cart->user_id;
        //     $view->with(compact('productVariants','userId','cart','totalAmount'));
        // });
    }
}
