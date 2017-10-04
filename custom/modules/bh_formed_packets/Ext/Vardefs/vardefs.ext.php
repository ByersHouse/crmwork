<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-04 09:20:12
$dictionary["bh_formed_packets"]["fields"]["aos_products_bh_formed_packets_1"] = array (
  'name' => 'aos_products_bh_formed_packets_1',
  'type' => 'link',
  'relationship' => 'aos_products_bh_formed_packets_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_AOS_PRODUCTS_BH_FORMED_PACKETS_1_FROM_AOS_PRODUCTS_TITLE',
  'id_name' => 'aos_products_bh_formed_packets_1aos_products_ida',
);
$dictionary["bh_formed_packets"]["fields"]["aos_products_bh_formed_packets_1_name"] = array (
  'name' => 'aos_products_bh_formed_packets_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_PRODUCTS_BH_FORMED_PACKETS_1_FROM_AOS_PRODUCTS_TITLE',
  'save' => true,
  'id_name' => 'aos_products_bh_formed_packets_1aos_products_ida',
  'link' => 'aos_products_bh_formed_packets_1',
  'table' => 'aos_products',
  'module' => 'AOS_Products',
  'rname' => 'name',
);
$dictionary["bh_formed_packets"]["fields"]["aos_products_bh_formed_packets_1aos_products_ida"] = array (
  'name' => 'aos_products_bh_formed_packets_1aos_products_ida',
  'type' => 'link',
  'relationship' => 'aos_products_bh_formed_packets_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_PRODUCTS_BH_FORMED_PACKETS_1_FROM_BH_FORMED_PACKETS_TITLE',
);



$dictionary['bh_formed_packets']['fields']['activate_date'] = array (
    'required' => false,
    'name' => 'activate_date',
    'vname' => 'LBL_DATE_ACTIVATE',
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

$dictionary['bh_formed_packets']['fields']['packet_sum'] = array (
    'required' => false,
    'name' => 'packet_sum',
    'vname' => 'LBL_PACKET_SUM',
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

$dictionary['bh_formed_packets']['fields']['packet_quantity'] = array (
    'required' => false,
    'name' => 'packet_quantity',
    'vname' => 'LBL_PACKET_QUANTITY',
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
$dictionary['bh_formed_packets']['fields']['packet_validity'] = array (
    'required' => false,
    'name' => 'packet_validity',
    'vname' => 'LBL_PACKET_VALIDITY',
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

$dictionary["bh_formed_packets"]["fields"]["packet_list"] = array (
    'required' => false,
    'name' => 'packet_list',
    'vname' => 'LBL_PACKET_LIST',
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
    'options' => 'product_packet_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

?>