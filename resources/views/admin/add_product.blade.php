@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm sản phẩm
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
                                <form role="form" action="{{URL::to('/save-product')}}" method="post" enctype="multipart/form-data">
                                    {{ csrf_field ()}}
                                <div class="form-group">
                                    <label for="productName">Tên sản phẩm</label>
                                    <input type="text" name="product_name" class="form-control" id="productName" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="productName">Giá sản phẩm</label>
                                    <input type="text" name="product_price" class="form-control" id="productPrice" placeholder="Giá sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="productImage">Hình ảnh sản phẩm</label>
                                    <input type="file" name="product_image" class="form-control" id="productImage">
                                </div>
                                <div class="form-group">
                                    <label for="productDesc">Mô tả sản phẩm</label>
                                    <textarea style="resize: none;" rows="8" class="form-control" name="product_desc" id="productDesc" placeholder="Mô tả sản phẩm"> </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="productContent"> Nội dung sản phẩm</label>
                                    <textarea style="resize: none;" rows="8" class="form-control" name="product_content" id="productContent" placeholder="Mô tả sản phẩm"> </textarea>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Danh mục sản phẩm</label>

                                    <select name="product_cate" class="form-control input-sm m-bot15">
                                        @foreach($cate_product as $key => $cate)
                                        <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Thương hiệu</label>
                                    <select name="product_brand" class="form-control input-sm m-bot15">
                                        @foreach($brand_product as $key => $brand)
                                        <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="productStatus">Hiển thị</label>

                                    <select name="product_status" class="form-control input-sm m-bot15">
                                        <option value="0">Ẩn</option>
                                        <option value="1">Hiển thị</option>
                                    </select>
                                </div>
                                
                                <button type="submit" name="add_product" class="btn btn-info">Thêm sản phẩm</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection