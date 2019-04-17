<script src="<?php echo base_url(); ?>asset/js/tag-it.js" type="text/javascript" charset="utf-8"></script>
<link href="<?php echo base_url(); ?>asset/css/jquery.tagit.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>asset/css/tagit.ui-zendesk.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="<?php echo base_url(); ?>asset/js/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo base_url(); ?>asset/js/ajax.js" type="text/javascript" charset="utf-8"></script>



<!-- View massage -->
<?php echo message_box('success'); ?>
<?php echo message_box('error'); ?>
<?php $info = $this->session->userdata('business_info'); ?>
<section class="content">
    <div class="row">
        <div class="col-md-12">

            <div class="box box-primary">
                <div class="box-header box-header-background with-border">
                    <div class="col-md-offset-3">
                        <h3 class="box-title ">Tambah Bekal</h3>
                    </div>
                </div>
                <!-- /.box-header -->

                <!-- form start -->
                <form role="form" enctype="multipart/form-data" id="addProductForm" onsubmit="return imageForm(this)"
                      action="<?php echo base_url(); ?>admin/product/save_product/<?php  if (!empty($product_info)) {
                          echo $product_info->product_id;
                      } ?>" method="post">


                    <br/><br/>
                    
                    <div class="row">

                        <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">

                            <div id="my-tab-content" class="tab-content">
                                <!-- ***************  General Tab Start ****************** -->
                                <div class="tab-pane <?php if(empty($tab)){ echo 'active';} ?>" id="general">

                                    <div class="box-body">
                                        <!-- /.Product Code -->
                                        <div class="form-group">
                                            <label>Kode Bekal <span class="required">*</span></label>
                                            <input type="text" placeholder="Kode Bekal"
                                                   class="form-control" name="kode_produk" value="<?php
                                                   if (!empty($product_info)) {
                                                       echo $product_info->product_code;
                                                   }
                                                   ?>">
                                        </div>
                                        <!-- /.Product Name -->
                                        <div class="form-group">
                                            <label>Nama Bekal <span class="required">*</span></label>
                                            <input type="text" placeholder="Nama Bekal" name="product_name"
                                                   value="<?php
                                                   if (!empty($product_info)) {
                                                       echo $product_info->product_name;
                                                   }
                                                   ?>"
                                                   class="form-control">
                                        </div>

                                        <!-- /.Product Note -->
                                        <div class="form-group">
                                            <label>Catatan Produk</label>
                                            <textarea name="product_note" class="form-control autogrow" id="field-ta"
                                                      placeholder="Catatan Produk"><?php
                                                if (!empty($product_info)) {
                                                    echo $product_info->product_note;
                                                }
                                                ?></textarea>
                                        </div>

                                        <!-- /.Category -->
                                        <div class="form-group">
                                            <label>Kategori Bekal</label>
                                            <select name="category_id" class="form-control col-sm-5" id="category" onchange="get_category(this.value)">
                                                <option value="">Pilih Kategori Bekal</option>
                                                <?php if (!empty($category)): ?>
                                                    <?php foreach ($category as $v_category) : ?>
                                                        <option value="<?php echo $v_category->category_id; ?>"
                                                            <?php
                                                            if (!empty($product_info)) {
                                                                echo $v_category->category_id == $product_category->category_id ? 'selected' : '';
                                                            }
                                                            ?> >
                                                            <?php echo $v_category->category_name; ?>
                                                        </option>
                                                    <?php endforeach; ?>
                                                <?php endif; ?>
                                            </select>
                                        </div>

                                        <!-- /.Sub Category -->
                                        <div class="form-group">
                                            <label>Sub Kategori<span class="required">*</span></label>
                                            <select name="subcategory_id" class="form-control col-sm-5" id="subcategory">
                                                <option value="">Sub Kategori</option>
                                                <?php if (!empty($subcategory)): ?>
                                                    <?php foreach ($subcategory as $v_subcategogy) : ?>
                                                        <option value="<?php echo $v_subcategogy->subcategory_id; ?>"
                                                            <?php
                                                            if (!empty($product_info)) {
                                                                echo $v_subcategogy->subcategory_id == $product_info->subcategory_id ? 'selected' : '';
                                                            }
                                                            ?> >
                                                            <?php echo $v_subcategogy->subcategory_name; ?>
                                                        </option>
                                                    <?php endforeach; ?>
                                                <?php endif; ?>
                                            </select>
                                        </div>
                                        
                                            <!-- /.Buying Price -->
                                            <div class="form-group">
                                                <label>Jumlah Bekal </label>
                                                <input type="text" id="product_quantity" name="product_quantity" placeholder="Jumlah Bekal"
                                                       value="<?php
                                                       if (!empty($inventory)) {
                                                           echo $inventory->product_quantity;
                                                       }
                                                       ?>"
                                                       class="form-control">
                                            </div>

                                            <!-- /.Selling Price -->
                                            <div class="form-group">
                                                <label>Bekal Rusak </label>
                                                <input type="text" name="notify_quantity" placeholder="Bekal Rusak"
                                                       value="<?php
                                                       if (!empty($inventory)) {
                                                           echo $inventory->notify_quantity;
                                                       }
                                                       ?>"
                                                       class="form-control">
                                            </div>

                                       
                                        <!-- /.Tax -->
                                        

                                        <!-- /.Product Image -->
                                        <div class="form-group">
                                            <label>Gambar Bekal</label>
                                        </div>
                                        <div class="form-group">
                                            <!-- hidden  old_path when update  -->
                                            <input type="hidden" name="old_path"  value="<?php
                                            if (!empty($product_image->image_path)) {
                                                echo $product_image->image_path;
                                            }
                                            ?>">
                                            <div class="fileinput fileinput-new"  data-provides="fileinput">
                                                <div class="fileinput-new thumbnail g-logo-img" >
                                                    <?php if (!empty($product_image)): // if product image is exist then show  ?>
                                                        <img src="<?php echo base_url() . $product_image->filename; ?>" >
                                                    <?php else: // if product image is not exist then defualt a image ?>
                                                        <img src="<?php echo base_url() ?>img/product.png" alt="Product Image">
                                                    <?php endif; ?>
                                                </div>
                                                <div class="fileinput-preview fileinput-exists thumbnail g-logo-img"  ></div>
                                                <div>
                                                    <span class="btn btn-default btn-file">
                                                        <span class="fileinput-new">
                                                            <input type="file" name="product_image" /></span>
                                                        <span class="fileinput-exists">Change</span>
                                                    </span>
                                                    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                </div>
                                                <div id="valid_msg" class="required"></div>
                                            </div>
                                        </div>
                                        <!-- / Product Image -->
                                    </div>
                                    <!-- /.box-body -->

                                </div>
                                <!-- ************* General Tab End ********************** -->

  
                                    <!-- ************* hidden input field ******** -->

                                    <!-- product image id -->
                                    <input type="hidden" name="product_image_id"
                                           value="<?php
                                           if (!empty($product_image)) {
                                               echo $product_image->product_image_id;
                                           }
                                           ?>">
                                    <!-- product price id -->
                                    <input type="hidden" name="product_price_id"
                                           value="<?php
                                           if (!empty($product_price)) {
                                               echo $product_price->product_price_id;
                                           }
                                           ?>">
                                    <!-- product special offer id -->
                                    <input type="hidden" name="special_offer_id"
                                           value="<?php
                                           if (!empty($special_offer)) {
                                               echo $special_offer->special_offer_id;
                                           }
                                           ?>">
                                    <!-- product inventory id -->
                                    <input type="hidden" name="inventory_id"
                                           value="<?php
                                           if (!empty($inventory)) {
                                               echo $inventory->inventory_id;
                                           }
                                           ?>">
                                    <!-- product code -->
                                    <?php if (empty($product_info->product_id)) {?>
                                    <input type="hidden" name="product_code"
                                           value="<?php echo $code ?>">
                                    <?php }  ?>




                        </div>
                    </div>
                        </div>
                    </div>

                    <div class="box-footer">
                        <button type="submit"  id="submit" class="btn bg-navy col-md-offset-3" type="submit">Simpan Bekal
                        </button>
                    </div>

                </form>
            </div><!-- /.box -->
        </div><!--/.col end -->
    </div><!-- /.row -->
</section><!-- /.section -->


<script lang="javascript">


    $(document).ready(function() {
        //***************** Tier Price Option Start *****************//
        $(".addTire").click(function() {
            $("#tireFields").append(
                '<tr>\
                    <td>\
                    <div class="form-group form-group-bottom">\
                        <input type="text" name="tier_quantity[]" required placeholder="Quantity"\
            value="" class="form-control">\
            </div>\
                    </td>\
                    <td>\
                    <div class="form-group form-group-bottom">\
                        <div class="input-group">\
                <span class="input-group-addon">\
                <?php  if(!empty($info->currency))
                                                    {
                                                        echo $info->currency ;
                                                    }else
                                                    {
                                                        echo '$';
                                                    } ?>
                </span>\
            <input class="form-control" placeholder="Price" name="tier_price[]" required type="text">\
            </div>\
            </div>\
                        </td>\
                        <td><a href="javascript:void(0);" class="remTire">Remove</a></td>\
                    </tr>'
            );
        });
        //***************** Tire Price Option End *****************//


        //***************** Product Attribute Start ***************//
        $(".addAttribute").click(function() {
            $("#attributeFields").append(
                '<tr>\
                    <td>\
                        <input type="text"  name="attribute_name[]" placeholder="Label"\
            value="" class="form-control selector ui-autocomplete-input" autocomplete="off">\
                    </td>\
                    <td>\
                        <input type="text" name="attribute_value[]" placeholder="Value"\
            value="" class="form-control">\
                        </td>\
                        <td><a href="javascript:void(0);" class="remAttribute">Remove</a></td>\
                        <input type="hidden" name="class_routine_details_id[]" value="">\
                    </tr>'
            );
        });
        //***************** Product Attribute End *****************//

        //Remove Tire Fields
        $("#tireFields").on('click', '.remTire', function() {
            $(this).parent().parent().remove();
        });

        //Remove Attribute Fields
        $("#attributeFields").on('click', '.remAttribute', function() {
            $(this).parent().parent().remove();
        });

    });
</script>


<script>
$(function(){
    var sampleTags = [
        <?php
        if(!empty($tags))
        foreach($tags as $v_tag){
        echo "'$v_tag->tag',";
        }

        ?>
    ];

    //-------------------------------
    // Allow spaces without quotes.
    //-------------------------------
    $('#allowSpacesTags').tagit({
       availableTags: sampleTags,
        allowSpaces: true,
        fieldName: "tages[]",
        tagLimit:3,
        autocomplete: {delay: 0, minLength: 2}
    });
});
</script>


<script>
    var options = {
        source: [
            <?php
           if(!empty($attribute_set))
           foreach($attribute_set as $v_attribute){
           echo "'$v_attribute->attribute_name',";
           }
           ?>
        ]

    };
    var result = 'input.selector';
    $(document).on('keydown.autocomplete', result, function() {
        $(this).autocomplete(options);
    });

</script>


<!--    Image Validation Check    -->


<script type="text/javascript">

</script>
