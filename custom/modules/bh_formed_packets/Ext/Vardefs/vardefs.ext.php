<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-04 09:38:11
$dictionary["bh_formed_packets"]["fields"]["bh_formed_packets_aos_products_1"] = array (
  'name' => 'bh_formed_packets_aos_products_1',
  'type' => 'link',
  'relationship' => 'bh_formed_packets_aos_products_1',
  'source' => 'non-db',
  'module' => 'AOS_Products',
  'bean_name' => 'AOS_Products',
  'vname' => 'LBL_BH_FORMED_PACKETS_AOS_PRODUCTS_1_FROM_AOS_PRODUCTS_TITLE',
);


// created: 2017-10-04 10:00:48
$dictionary["bh_formed_packets"]["fields"]["bh_formed_packets_bh_packet_activation_1"] = array (
  'name' => 'bh_formed_packets_bh_packet_activation_1',
  'type' => 'link',
  'relationship' => 'bh_formed_packets_bh_packet_activation_1',
  'source' => 'non-db',
  'module' => 'bh_packet_activation',
  'bean_name' => 'bh_packet_activation',
  'side' => 'right',
  'vname' => 'LBL_BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_FROM_BH_PACKET_ACTIVATION_TITLE',
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