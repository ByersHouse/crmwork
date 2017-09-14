<?php 
 //WARNING: The contents of this file are auto-generated



$dictionary['Document']['fields']['doc_status'] = array (
    'required' => false,
    'name' => 'doc_status',
    'vname' => 'LBL_DOCUMENT_STATUS',
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
    'options' => 'documents_status_list',
    'studio' => 'visible',
    'size' => '20',
    'enable_range_search' => false,
);

$dictionary['Document']['fields']['receipt_date'] = array (
    'required' => false,
    'name' => 'receipt_date',
    'vname' => 'LBL_DATE_RECEIPT',
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

$dictionary['Document']['fields']['issuing_date'] = array (
    'required' => false,
    'name' => 'issuing_date',
    'vname' => 'LBL_DATE_ISSUING',
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

$dictionary['Document']['fields']['termination_date'] = array (
    'required' => false,
    'name' => 'termination_date',
    'vname' => 'LBL_DATE_TERMINATION',
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



// created: 2017-09-14 11:00:22
$dictionary["Document"]["fields"]["leads_documents_1"] = array (
  'name' => 'leads_documents_1',
  'type' => 'link',
  'relationship' => 'leads_documents_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_DOCUMENTS_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_documents_1leads_ida',
);
$dictionary["Document"]["fields"]["leads_documents_1_name"] = array (
  'name' => 'leads_documents_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_DOCUMENTS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_documents_1leads_ida',
  'link' => 'leads_documents_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Document"]["fields"]["leads_documents_1leads_ida"] = array (
  'name' => 'leads_documents_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_documents_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_DOCUMENTS_1_FROM_DOCUMENTS_TITLE',
);

?>