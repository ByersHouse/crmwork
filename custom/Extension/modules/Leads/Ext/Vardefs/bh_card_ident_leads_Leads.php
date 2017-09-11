<?php
// created: 2017-09-11 10:02:06
$dictionary["Lead"]["fields"]["bh_card_ident_leads"] = array (
  'name' => 'bh_card_ident_leads',
  'type' => 'link',
  'relationship' => 'bh_card_ident_leads',
  'source' => 'non-db',
  'module' => 'bh_Card_ident',
  'bean_name' => false,
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_BH_CARD_IDENT_TITLE',
  'id_name' => 'bh_card_ident_leadsbh_card_ident_ida',
);
$dictionary["Lead"]["fields"]["bh_card_ident_leads_name"] = array (
  'name' => 'bh_card_ident_leads_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_BH_CARD_IDENT_TITLE',
  'save' => true,
  'id_name' => 'bh_card_ident_leadsbh_card_ident_ida',
  'link' => 'bh_card_ident_leads',
  'table' => 'bh_card_ident',
  'module' => 'bh_Card_ident',
  'rname' => 'name',
);
$dictionary["Lead"]["fields"]["bh_card_ident_leadsbh_card_ident_ida"] = array (
  'name' => 'bh_card_ident_leadsbh_card_ident_ida',
  'type' => 'link',
  'relationship' => 'bh_card_ident_leads',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'left',
  'vname' => 'LBL_BH_CARD_IDENT_LEADS_FROM_BH_CARD_IDENT_TITLE',
);
