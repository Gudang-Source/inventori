
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title" id="myModalLabel"><?php echo $product->product_name ?></h4>
</div>
<div class="modal-body wrap-modal wrap" style="max-height: 900px;">

    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-thumbnail">
                        <?php if(!empty($product->filename)){?>
                            <img src="<?php echo base_url() . $product->filename; ?>" class="img-circle" alt="Product Image"/>
                        <?php }else{?>
                            <img src="<?php echo base_url(); ?>img/product.png" class="img-circle" alt="Product Image"/>
                        <?php } ?>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-8">

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th class="active" colspan="2"><?php echo $product->product_name ?></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td class="col-sm-3">Kode Bekal</td>
                    <td><?php echo $product->product_code ?></td>
                </tr>
                <tr>
                    <td class="col-sm-3 ">Nama Bekal</td>
                    <td class=""><?php echo $product->product_name ?></td>
                </tr>
                <tr>
                    <td class="col-sm-3">Catatan Produk</td>
                    <td><?php echo $product->product_note ?></td>
                </tr>
                <tr>
                    <td class="col-sm-3 ">Kategori Bekal</td>
                    <td class=""><?php echo $product->category_name ?></td>
                </tr>
                


                </tbody>
            </table>

        </div>
    </div>


    <div class="modal-footer" >

            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            <a href="<?php echo base_url(); ?>admin/product/add_product/<?php echo $product_id ?>" type="button" class="btn btn-primary">Edit Product</a>

        </div>

</div>


