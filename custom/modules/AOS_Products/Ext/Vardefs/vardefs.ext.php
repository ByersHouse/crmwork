<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-03 15:14:34
$dictionary["AOS_Products"]["fields"]["aos_products_bh_campaine_products_1"] = array (
  'name' => 'aos_products_bh_campaine_products_1',
  'type' => 'link',
  'relationship' => 'aos_products_bh_campaine_products_1',
  'source' => 'non-db',
  'module' => 'bh_campaine_products',
  'bean_name' => 'bh_campaine_products',
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_BH_CAMPAINE_PRODUCTS_1_FROM_BH_CAMPAINE_PRODUCTS_TITLE',
);



$dictionary['AOS_Products']['fields']['name'] = array (
    'required' => false,
    'name' => 'name',
    'vname' => 'LBL_PRODUCT_NAME',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['AOS_Products']['fields']['essence'] = array (
    'required' => false,
    'name' => 'product_essence',
    'vname' => 'LBL_PRODUCT_ESSENCE',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['AOS_Products']['fields']['registration_use'] = array (
    'required' => false,
    'name' => 'registration_use',
    'vname' => 'LBL_PRODUCT_REGISTRATION_USE',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);


$dictionary['AOS_Products']['fields']['activation_date'] = array (
    'required' => false,
    'name' => 'activation_date',
    'vname' => 'LBL_PRODUCT_ACTIVATION',
    'type' => 'date',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['AOS_Products']['fields']['product_validity'] = array (
    'required' => false,
    'name' => 'product_validity',
    'vname' => 'LBL_PRODUCT_VALIDITY',
    'type' => 'int',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['AOS_Products']['fields']['basic_cost'] = array (
    'required' => false,
    'name' => 'basic_cost',
    'vname' => 'LBL_PRODUCT_BASIC_COST',
    'type' => 'float',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary["AOS_Products"]["fields"]["product_status"] = array (
    'required' => false,
    'name' => 'product_status',
    'vname' => 'LBL_STATUS_LIST',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'product_status_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary["AOS_Products"]["fields"]["product_type"] = array (
    'required' => false,
    'name' => 'product_type',
    'vname' => 'LBL_TYPE_LIST',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'product_type_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary["AOS_Products"]["fields"]["product_currency"] = array (
    'required' => false,
    'name' => 'product_currency',
    'vname' => 'LBL_CURRENCY_LIST',
    'type' => 'enum',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'options' => 'product_currency_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);





// created: 2017-10-04 09:38:11
$dictionary["AOS_Products"]["fields"]["bh_formed_packets_aos_products_1"] = array (
  'name' => 'bh_formed_packets_aos_products_1',
  'type' => 'link',
  'relationship' => 'bh_formed_packets_aos_products_1',
  'source' => 'non-db',
  'module' => 'bh_formed_packets',
  'bean_name' => 'bh_formed_packets',
  'vname' => 'LBL_BH_FORMED_PACKETS_AOS_PRODUCTS_1_FROM_BH_FORMED_PACKETS_TITLE',
);

?>