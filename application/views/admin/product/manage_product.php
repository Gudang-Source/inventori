<!--Massage-->
<?php echo message_box('success'); ?>
<?php echo message_box('error'); ?>
<!--/ Massage-->


<section class="content">
    <div class="row">
        <form action="<?php echo base_url() ?>admin/product/product_action" method="post">
        <div class="col-md-12">

            <div class="box box-primary">
                <div class="box-header box-header-background with-border">

                        <h3 class="box-title ">Kelola Bekal</h3>



                    <div class="box-tools">
                        <div class="input-group ">
                            <select class="form-control pull-right" name="action" style="width: 150px;" required>
                                <option value="">Pilih..</option>
                                <option value="1">Aktiv</option>
                                <option value="2">Tidak Aktiv</option>
                                <option value="3">Hapus</option>
                            </select>
                                    <span class="input-group-btn">
                                      <button type="submit" class="btn btn-default" type="button">Aksi</button>
                                    </span>
                        </div>
                    </div>


                </div>


                <div class="box-body">


                        <!-- Table -->
                        <table class="table table-bordered table-striped" id="dataTables-example">
                            <thead ><!-- Table head -->
                            <tr>
                                <th class="col-sm-1 active" style="width: 21px"><input type="checkbox" class="checkbox-inline" id="parent_present" /></th>
                                <th class="active">Gambar</th>
                                <th class="active">Kode Bekal</th>
                                <th class="active">Nama Bekal</th>
                                <th class="active">Kategori Barang</th>
                                <th class="active">Siap Pakai</th>
                                <th class="active">Status</th>
                                <th class="active">Aksi</th>

                            </tr>
                            </thead><!-- / Table head -->
                            <tbody><!-- / Table body -->

                            <?php if (!empty($product)): foreach ($product as $v_product) : ?>
                                <tr class="custom-tr">
                                    <td class="vertical-td"><input name="product_id[]" value="<?php echo $v_product->product_id ?>" class="child_present" type="checkbox" /></td>
                                    <td class="product-img">
                                        <?php if (!empty($v_product->filename)):  ?>
                                            <img src="<?php echo base_url() . $v_product->filename ?>" />
                                        <?php else:?>
                                            <img src="<?php echo base_url() ?>img/product.png" alt="Product Image">
                                        <?php endif; ?>
                                    </td>
                                    <td class="vertical-td"><?php echo $v_product->product_code ?></td>
                                    <td class="vertical-td"><?php echo $v_product->product_name ?></td>
                                    <td class="vertical-td"><?php echo $v_product->category_name .' > '. $v_product->subcategory_name?></td>
                                    <td class="vertical-td">
                                        <?php
                                            if($v_product->jumlah_barang >= $v_product->product_quantity)
                                            { ?>
                                                <span class="label label-warning"><?php echo $v_product->product_quantity ?></span>
                                        <?php } else { ?>
                                                <?php echo $v_product->product_quantity ?>
                                                <?php } ?>

                                    </td>
                                    <td class="vertical-td">
                                        <?php
                                        if($v_product->status == 0)
                                        { ?>
                                            <span class="label label-warning"><?php echo 'Inactive' ?></span>
                                        <?php } else { ?>
                                            <span class="label label-primary"><?php echo 'Active' ?></span>
                                        <?php } ?>

                                    </td>
                                    <td class="vertical-td">
                                        <?php echo btn_view_modal('admin/product/view_product/' . $v_product->product_id); ?>
                                        <?php echo btn_edit('admin/product/add_product/' . $v_product->product_id); ?>
                                        <?php echo btn_delete('admin/product/delete_product/' . $v_product->product_id); ?>
                                    </td>

                                </tr>
                            <?php

                            endforeach;
                            ?><!--get all sub category if not this empty-->
                            <?php else : ?> <!--get error message if this empty-->
                                <td colspan="8">
                                    <strong>Tidak ada data</strong>
                                </td><!--/ get error message if this empty-->
                            <?php endif; ?>
                            </tbody><!-- / Table body -->
                        </table> <!-- / Table -->

                </div><!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!--/.col end -->
        </form>
    </div>
    <!-- /.row -->
</section>

<script>
    $('body').on('hidden.bs.modal', '.modal', function() {
        $(this).removeData('bs.modal');
    });

</script>



