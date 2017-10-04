<?php
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
