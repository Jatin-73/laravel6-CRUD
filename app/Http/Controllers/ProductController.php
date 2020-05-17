<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; 
use App\Product;

class ProductController extends Controller
{
    public function index($id)
    {
        //$products = Product::where('user_id', $id)->get();
        $products = Product::where('user_id', $id)->paginate(3);
        return view('products.index', compact('products', 'id'));
    }

    public function create($id)
    {
        return view('products.create', compact('id'));
    }
    public function store(Request $request, $id)
    {
        $request->validate([
            'product_title'        => 'required|alpha|max:50',
            'product_description'  => 'required|string|max:100',
            'product_review'       => 'required|max:255',
        ]);

        $product = new Product();
        $product->product_title         =   $request->input('product_title');
        $product->product_description   =   $request->input('product_description');
        $product->product_review        =   $request->input('product_review');
        $product->user_id               =   $id;

        if($product->save()){
            return redirect()->route('products.index', compact('id'))->with('info', 'Product Added Successfully');
         } 
         else{
             return redirect()->route('products.index', compact('id'))->with('info', 'Product Could Not Be Addedd');
         }
    }

    public function edit($id)
    {
        $products = Product::where('id', $id)->first();
        return view('products.edit', compact('products', 'id'));
    }

    public function update(Request $request, $product_id)
    {
        $id = Auth::user()->id;
        $data = $request->validate([
            'product_title'        => 'required|alpha|max:50',
            'product_description'  => 'required|string|max:100',
            'product_review'       => 'required|max:255',
        ]);

        $updated = Product::where('id', $product_id)->update($data);

        if($updated){
            return redirect()->route('products.index', compact('id'))->with('info','Product Updated Successfully');
        }
    }

    public function delete($product_id)
    {
        $id = Auth::user()->id;
        $deleted = Product::where('id', $product_id)->delete();
        if($deleted){
            return redirect()->route('products.index', compact('id'))->with('info','Product Deleted Successfully');
        }
    }
}
