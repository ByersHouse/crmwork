<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2017-09-12 09:54:05
$dictionary["bh_faq"]["fields"]["bh_faq_history_bh_faq"] = array (
  'name' => 'bh_faq_history_bh_faq',
  'type' => 'link',
  'relationship' => 'bh_faq_history_bh_faq',
  'source' => 'non-db',
  'module' => 'bh_faq_history',
  'bean_name' => false,
  'side' => 'right',
  'vname' => 'LBL_BH_FAQ_HISTORY_BH_FAQ_FROM_BH_FAQ_HISTORY_TITLE',
);



$dictionary['bh_faq']['fields']['element_content'] = array (
       'required' => false,
       'name' => 'element_content',
       'vname' => 'LBL_ELEMENT_CONTENT',
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
       'options' => 'faq_content_list',
       'studio' => 'visible',
       'size' => '20',
       'enable_range_search' => false,
);
?>