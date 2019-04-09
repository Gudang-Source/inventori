<!-- View massage -->
<?php echo message_box('success'); ?>
<?php echo message_box('error'); ?>

<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box box-primary">
                <div class="box-header box-header-background with-border">
                    <div class="col-md-offset-3">
                        <h3 class="box-title ">Tambah Satkai</h3>
                    </div>
                </div>
                <!-- /.box-header -->

                <!-- form start -->
                <form role="form" enctype="multipart/form-data" id="addCustomerForm"
                      action="<?php echo base_url(); ?>admin/customer/save_customer/<?php if (!empty($customer->customer_id)) {
                          echo $customer->customer_id;
                      } ?>"
                      method="post">

                    <div class="row">

                        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">

                            <div class="box-body">

                                <!-- /.customer Code -->
                               <div class="form-group">
                                  <label class="control-label col-sm-2">
                                    Nama
                                  </label>
                                  <div class="col-sm-10">
                                    <input type="text" class="form-control" name="nama" value="<?=isset($customer['nama'])? $customer['nama'] : ""?>">
                                  </div>
                                </div>

                                <!-- /.customer Name -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nrp <span class="required">*</span></label>
                                    <input type="text" name="customer_name" placeholder="Customer Name"
                                           value="<?php
                                           if (!empty($customer->customer_name)) {
                                               echo $customer->customer_name;
                                           }
                                           ?>"
                                           class="form-control">
                                </div>

                                <!-- /.Company Email -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Pangkat <span
                                            class="required">*</span></label>
                                    <input type="text" placeholder="Email" name="email"
                                           value="<?php
                                           if (!empty($customer->email)) {
                                               echo $customer->email;
                                           }
                                           ?>"
                                           class="form-control">
                                </div>

                                <!-- /.Phone -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Korps</label>
                                    <input type="text" placeholder="Phone" name="phone" onchange="check_phone(this.value)"
                                           value="<?php
                                           if (!empty($customer->phone)) {
                                               echo $customer->phone;
                                           }
                                           ?>"
                                           class="form-control">
                                    <div style=" color: #E13300" id="phone_result"></div>
                                </div>

                                <!-- /.Discount -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Jabatan</label>
                                    <input type="text" placeholder="Discount" name="discount"
                                           value="<?php
                                           if (!empty($customer->discount)) {
                                               echo $customer->discount;
                                           }
                                           ?>"
                                           class="form-control">
                                </div>

                                <!-- /.Address -->
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Kesatuan <span class="required">*</span></label>
                                    <textarea name="address" class="form-control autogrow" id="ck_editor"
                                              placeholder="Address"><?php
                                        if (!empty($customer->address)) {
                                            echo $customer->address;
                                        }
                                        ?></textarea>
                                    <?php echo display_ckeditor($editor['ckeditor']); ?>
                                </div>


                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>

                    <!-- customer code -->
                    <?php if (empty($customer->customer_code)) {?>
                        <input type="hidden" name="customer_code"
                               value="<?php echo $code ?>">
                    <?php }  ?>

                    <!-- customer id -->
                    <input type="hidden" name="customer_id" value="<?php if (!empty($customer->customer_id)) {
                        echo $customer->customer_id;
                    } ?>" id="customer_id">

                    <div class="box-footer">
                        <button type="submit" id="customer_btn" class="btn bg-navy col-md-offset-3" type="submit">Add Supplier
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

<script src="<?php echo base_url() ?>asset/js/ajax.js" ></script>