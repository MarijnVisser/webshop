<?php

namespace App\Http\Controllers;


use App\order;
use App\cart;
use App\products;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;

class ProductsController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // Get all category names
        $productDetails = DB::table('products')
            ->where('products.id', '=', $id)
            ->get();

        return view('products.product')->with('details', $productDetails);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function addtoCart(Request $request, $id)
    {
        $product = products::find($id);
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new cart($oldCart);
        $cart->add($product, $product->id);

        $request->session()->put('cart', $cart);
        return redirect()->route('products.show', $id);
    }

    public function getReduceByOne($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new cart($oldCart);
        $cart->reduceByOne($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('products.shoppingcart');
    }

    public function getRemoveItem($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new cart($oldCart);
        $cart->removeItem($id);

        if (count($cart->items) > 0) {
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('products.shoppingcart');
    }

    public function getCart()
    {
        if (!Session::has('cart')) {
            return view('shoppingcart.shoppingcart');
        }
        $oldCart = Session::get('cart');
        $cart = new cart($oldCart);
        return view('shoppingcart.shoppingcart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    public function getCheckout()
    {
        if (!Session::has('cart')) {
            return view('shoppingcart.shoppingcart');
        }
        $oldCart = Session::get('cart');
        $cart = new cart($oldCart);
        $total = $cart->totalPrice;
        return view('shoppingcart.checkout', ['total' => $total]);
    }

    public function postCheckout(Request $request)
    {
        if (!Session::has('cart')) {
            return redirect()->route('products.shoppingcart');
        }
        $oldCart = Session::get('cart');
        $cart = new cart($oldCart);

        try {
            $order = new order();
            $order->cart = serialize($cart);
            $order->name = $request->input('name');
            $order->address = $request->input('address');

            Auth::user()->orders()->save($order);
        } catch (\Exception $e) {
            return redirect()->route('checkout')->with('error', $e->getMessage());
        }

        Session::forget('cart');
        return redirect()->route('home')->with('success', 'Successfully purchased products!');
    }
}
