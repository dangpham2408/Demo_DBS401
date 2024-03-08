@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                           Cập nhât sản phẩm
                        </header>
                        <?php
                            $message = Session::get('message');
                            if ($message) {
                                echo '<span class="text-alert"> '.$message.' </span>';
                                Session::put('message', null);
                            }
                        ?>
                        <div class="panel-body">
                        
                            <div class="position-center">
                                @foreach($edit_product as $key => $pro)
                                <form role="form" action="{{URL::to('/update-product/'.$pro->product_id)}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field ()}}
                                <div class="form-group">
                                    <label for="productName">Tên sản phẩm</label>
                                    <input type="text" name="product_name" class="form-control" id="productName" value="{{$pro->product_name}}">
                                </div>
                                <div class="form-group">
                                    <label for="productName">Giá sản phẩm</label>
                                    <input type="text" name="product_price" class="form-control" id="productPrice" value="{{$pro->product_price}}">
                                </div>
                                <div class="form-group">
                                    <label for="productImage">Hình ảnh sản phẩm</label>
                                    <input type="file" name="product_image" class="form-control" id="productImage">
                                    <img src="{{URL::to('public/uploads/product/'.$pro->product_image)}}" height="100" width="100">
                                </div>
                                <div class="form-group">
                                    <label for="productDesc">Mô tả sản phẩm</label>
                                    <textarea style="resize: none;" rows="8" class="form-control" name="product_desc" id="productDesc">{{$pro->product_desc}} </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="productContent"> Nội dung sản phẩm</label>
                                    <textarea style="resize: none;" rows="8" class="form-control" name="product_content" id="productContent"> {{$pro->product_content}} </textarea>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Danh mục sản phẩm</label>

                                    <select name="product_cate" class="form-control input-sm m-bot15">
                                        @foreach($cate_product as $key => $cate)
                                        @if($cate->category_id==$pro->category_id)
                                        <option selected value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @else
                                        <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Thương hiệu sản phẩm</label>
                                    <select name="product_brand" class="form-control input-sm m-bot15">
                                        @foreach($brand_product as $key => $brand)
                                        @if($brand->brand_id==$pro->brand_id)
                                        <option selected value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @else
                                        <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Hiển thị</label>

                                    <select name="product_status" class="form-control input-sm m-bot15" value="{{$pro->product_status}}" >
                                        <option value="0">ẨN</option>
                                        <option value="1">Hiển thị</option>
                                    </select>
                                </div>
                                
                                <button type="submit" name="all_product" class="btn btn-info">Cập nhật sản phẩm</button>
                            </form>
                            @endforeach
                            </div>

                        </div>
                    </section>

            </div>
@endsection