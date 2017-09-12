<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 09:54:05
$dictionary["bh_faq_history"]["fields"]["bh_faq_history_bh_faq"] = array (
  'name' => 'bh_faq_history_bh_faq',
  'type' => 'link',
  'relationship' => 'bh_faq_history_bh_faq',
  'source' => 'non-db',
  'module' => 'bh_faq',
  'bean_name' => 'bh_faq',
  'vname' => 'LBL_BH_FAQ_HISTORY_BH_FAQ_FROM_BH_FAQ_TITLE',
  'id_name' => 'bh_faq_history_bh_faqbh_faq_ida',
);
$dictionary["bh_faq_history"]["fields"]["bh_faq_history_bh_faq_name"] = array (
  'name' => 'bh_faq_history_bh_faq_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BH_FAQ_HISTORY_BH_FAQ_FROM_BH_FAQ_TITLE',
  'save' => true,
  'id_name' => 'bh_faq_history_bh_faqbh_faq_ida',
  'link' => 'bh_faq_history_bh_faq',
  'table' => 'bh_faq',
  'module' => 'bh_faq',
  'rname' => 'name',
);
$dictionary["bh_faq_history"]["fields"]["bh_faq_history_bh_faqbh_faq_ida"] = array (
  'name' => 'bh_faq_history_bh_faqbh_faq_ida',
  'type' => 'link',
  'relationship' => 'bh_faq_history_bh_faq',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_FAQ_HISTORY_BH_FAQ_FROM_BH_FAQ_HISTORY_TITLE',
);



$dictionary['Lead']['fields']['bank_name'] = array (
      'required' => false,
      'name' => 'bank_name',
      'vname' => 'LBL_BANKNAME',
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
      'studio' => 'visible',
      'rows' => '20',
      'cols' => '40',
    );
?>