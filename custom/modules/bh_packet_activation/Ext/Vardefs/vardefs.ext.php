<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-10-04 10:00:48
$dictionary["bh_packet_activation"]["fields"]["bh_formed_packets_bh_packet_activation_1"] = array (
  'name' => 'bh_formed_packets_bh_packet_activation_1',
  'type' => 'link',
  'relationship' => 'bh_formed_packets_bh_packet_activation_1',
  'source' => 'non-db',
  'module' => 'bh_formed_packets',
  'bean_name' => 'bh_formed_packets',
  'vname' => 'LBL_BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_FROM_BH_FORMED_PACKETS_TITLE',
  'id_name' => 'bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida',
);
$dictionary["bh_packet_activation"]["fields"]["bh_formed_packets_bh_packet_activation_1_name"] = array (
  'name' => 'bh_formed_packets_bh_packet_activation_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_FROM_BH_FORMED_PACKETS_TITLE',
  'save' => true,
  'id_name' => 'bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida',
  'link' => 'bh_formed_packets_bh_packet_activation_1',
  'table' => 'bh_formed_packets',
  'module' => 'bh_formed_packets',
  'rname' => 'name',
);
$dictionary["bh_packet_activation"]["fields"]["bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida"] = array (
  'name' => 'bh_formed_packets_bh_packet_activation_1bh_formed_packets_ida',
  'type' => 'link',
  'relationship' => 'bh_formed_packets_bh_packet_activation_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_FORMED_PACKETS_BH_PACKET_ACTIVATION_1_FROM_BH_PACKET_ACTIVATION_TITLE',
);



$dictionary['bh_packet_activation']['fields']['date_of_sale'] = array (
    'required' => false,
    'name' => 'date_of_sale',
    'vname' => 'LBL_DATE_SALE',
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

$dictionary["bh_packet_activation"]["fields"]["packet_list"] = array (
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



// created: 2017-09-15 14:36:17
$dictionary["bh_packet_activation"]["fields"]["leads_bh_packet_activation_1"] = array (
  'name' => 'leads_bh_packet_activation_1',
  'type' => 'link',
  'relationship' => 'leads_bh_packet_activation_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_BH_PACKET_ACTIVATION_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_bh_packet_activation_1leads_ida',
);
$dictionary["bh_packet_activation"]["fields"]["leads_bh_packet_activation_1_name"] = array (
  'name' => 'leads_bh_packet_activation_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_BH_PACKET_ACTIVATION_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_bh_packet_activation_1leads_ida',
  'link' => 'leads_bh_packet_activation_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["bh_packet_activation"]["fields"]["leads_bh_packet_activation_1leads_ida"] = array (
  'name' => 'leads_bh_packet_activation_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_bh_packet_activation_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PACKET_ACTIVATION_1_FROM_BH_PACKET_ACTIVATION_TITLE',
);

?>