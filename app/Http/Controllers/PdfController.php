<?php

namespace App\Http\Controllers;

use App\Models\Command;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App; 
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Support\Facades\Session;

class PdfController extends Controller
{
    //

    public function ShowCommand($id){

        Session::put('id', $id);
        
        try{
            $pdf = App::make('dompdf.wrapper')->setPaper('a4', 'landscape');
            $pdf->loadHTML($this->convert_orders_data_to_html());

            return $pdf->stream();
        }
        catch(BindingResolutionException $e){
            return redirect('/admin/orders')->with('error', $e->getMessage());
        }

    }

    public function convert_orders_data_to_html(){

        $commands = Command::where('id',Session::get('id'))->get();

        foreach($commands as $command){
            $nom = $command->name;
            $adresse = $command->address;
            $date = $command->created_at;
        }

        $commands->transform(function($command, $key){
            $command->cart = unserialize($command->cart);

            return $command;
        });

        $output = '<link rel="stylesheet" href="frontend/css/style1.css">
            <table class="table">
                <thead class="thead">
                    <tr class="text-left">
                        <th>Client Name : '.$nom.'<br> Client Address : '.$adresse.' <br> Date : '.$date.'</th>
                    </tr>
                </thead>
            </table>
            <table class="table">
                <thead class="thead-primary">
                    <tr class="text-center">
                        <th>Image</th>
                        <th>Product name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>';
                    foreach($commands as $order){

                        foreach($order->cart->items as $item){

                            $output .= '<tr class="text-center">
                                        <td class="image-prod"><img src="storage/product_images/'.$item['product_image'].'" alt="" style = "height: 80px; width: 80px;"></td>
                                        <td class="product-name">
                                            <h3>'.$item['product_name'].'</h3>
                                        </td>
                                        <td class="price">$ '.$item['product_price'].'</td>
                                        <td class="qty">'.$item['qty'].'</td>
                                        <td class="total">$ '.$item['product_price']*$item['qty'].'</td>
                                    </tr><!-- END TR-->
                                    </tbody>';

                        }

                        $totalPrice = $order->cart->totalPrice; 

                    }

                    $output .='</table>';

                    $output .='<table class="table">
                            <thead class="thead">
                                <tr class="text-center">
                                        <th>Total</th>
                                        <th>$ '.$totalPrice.'</th>
                                </tr>
                            </thead>
                        </table>';


                    return $output;

    }

}
