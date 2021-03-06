<link href="<?php echo base_url(); ?>asset/css/select2.css" rel="stylesheet" type="text/css" />
<script src="<?php echo base_url(); ?>asset/js/select2.js"></script>

<!-- View massage -->
<?php echo message_box('success'); ?>
<?php echo message_box('error'); ?>

<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box box-primary">
                <div class="box-header box-header-background with-border">
                    <div class="col-md-offset-3">
                        <h3 class="box-title ">Tambah Bekal Rusak</h3>
                    </div>
                </div>
                <!-- /.box-header -->

                <!-- form start -->
                <form role="form" enctype="multipart/form-data" id="damageProductForm"
                      action="<?php echo base_url(); ?>admin/product/save_damage_product"
                      method="post">

                    <div class="row">

                        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">

                            <div class="box-body">

                                <!-- /.product -->
                                <div class="form-group">
                                    <label>Pilih Bekal<span class="required">*</span></label>
                                    <select id="e2" style="width: 100%;" name="product_id" required>
                                        <option value="">Pilih Bekal</option>
                                        <?php if (!empty($product)): ?>
                                            <?php foreach ($product as $v_product) : ?>
                                                <option value="<?php echo $v_product->product_id; ?>">
                                                    <?php echo $v_product->product_code . '-' . $v_product->product_name ?>
                                                </option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>

                                    </select>
                                </div>

                                <!-- /.damage qty -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Jumlah Rusak <span class="required">*</span></label>
                                    <input type="text" name="qty" placeholder="Jml Rusak" class="form-control">
                                </div>

                                <!-- /.note -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Catatan</label>
                                    <textarea name="note" class="form-control autogrow"
                                              placeholder="Note"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Kurangi dari Stok</label>
                                    <select name="decrease" class="form-control">
                                        <option value="">Kurangi dari Stok ?</option>
                                        <option value="1">Ya</option>
                                        <option value="0">Tidak</option>
                                    </select>
                                </div>



                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn bg-navy col-md-offset-3" type="submit">Tambah Bekal Rusak
                        </button>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
        <!--/.col end -->
    </div>
    <!-- /.row -->
</section>

<script>
    $(document).ready(function() {
        $("#e2").select2({
            placeholder: "Select a State",
            allowClear: true
        });
    });
</script>