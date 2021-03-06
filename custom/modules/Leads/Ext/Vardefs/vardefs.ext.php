<?php 
 //WARNING: The contents of this file are auto-generated


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


// created: 2017-10-04 12:59:22
$dictionary["Lead"]["fields"]["bh_marketing_directorate_leads_1"] = array (
  'name' => 'bh_marketing_directorate_leads_1',
  'type' => 'link',
  'relationship' => 'bh_marketing_directorate_leads_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_directorate',
  'bean_name' => 'bh_marketing_directorate',
  'vname' => 'LBL_BH_MARKETING_DIRECTORATE_LEADS_1_FROM_BH_MARKETING_DIRECTORATE_TITLE',
);



$dictionary['Lead']['fields']['lead_status'] = array (
      'required' => false,
      'name' => 'lead_status',
      'vname' => 'LBL_LEAD_STATUS',
      'type' => 'enum',
      'massupdate' => 0,
      'default' => '',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'false',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 100,
      'size' => '20',
      'options' => 'lead_status_list',
      'studio' => 'visible',
      'dependency' => false,
    );

$dictionary['Lead']['fields']['lead_sex'] = array (
      'required' => true,
      'name' => 'lead_sex',
      'vname' => 'LBL_LEAD_SEX',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 15,
      'size' => '20',
      'options' => 'lead_sex_list',
      'studio' => 'visible',
      'dependency' => false,
    );

$dictionary['Lead']['fields']['resident'] = array (
      'required' => false,
      'name' => 'resident',
      'vname' => 'LBL_RESIDENT',
      'type' => 'bool',
      'massupdate' => 0,
      'default' => '0',
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
      'len' => '255',
      'size' => '20',
    );

$dictionary['Lead']['fields']['inn']=array (
      'required' => false,
      'name' => 'inn',
      'vname' => 'LBL_INN',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'индивидуальный налоговый номер',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '10',
      'size' => '20',
    );

$dictionary['Lead']['fields']['date_birthday'] = array (
      'required' => false,
      'name' => 'date_birthday',
      'vname' => 'LBL_DATE_BIRTHDAY',
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

$dictionary['Lead']['fields']['soc_status'] = array (
      'required' => false,
      'name' => 'soc_status',
      'vname' => 'LBL_SOC_STATUS',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_socstatus_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
    );


$dictionary['Lead']['fields']['statliveplace'] = array (
      'required' => false,
      'name' => 'statliveplace',
      'vname' => 'LBL_STATUS_LIVEPLACE',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_statliveplace_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
    );

$dictionary['Lead']['fields']['education'] = array (
      'required' => false,
      'name' => 'education',
      'vname' => 'LBL_EDUCATION',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 100,
      'size' => '20',
      'options' => 'lead_education_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['photo'] = array (
      'required' => false,
      'name' => 'photo',
      'vname' => 'LBL_PHOTO',
      'type' => 'image',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Выберите фотографию',
      'help' => 'Выберите фотографию',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => 0,
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 255,
      'size' => '20',
      'studio' => 'visible',
      'dbType' => 'varchar',
      'border' => '1',
      'width' => '120',
      'height' => '240',
    );

$dictionary['Lead']['fields']['problem_law'] = array (
      'required' => false,
      'name' => 'problem_law',
      'vname' => 'LBL_PROBLEMLAW',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_problemlaw_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
);

$dictionary['Lead']['fields']['judded_by_article'] = array (
      'required' => false,
      'name' => 'judded_by_article',
      'vname' => 'LBL_JUDDED_BY',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Судимость по статье',
      'help' => 'Судимость по статье',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    );


$dictionary['Lead']['fields']['family_status'] = array (
      'required' => false,
      'name' => 'family_status',
      'vname' => 'LBL_FAMILYSTATUS',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 100,
      'size' => '20',
      'options' => 'lead_familystatus_list',
      'studio' => 'visible',
      'dependency' => false,
);


$dictionary['Lead']['fields']['realty'] = array (
      'required' => false,
      'name' => 'realty',
      'vname' => 'LBL_REALTY',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_realty_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
);

$dictionary['Lead']['fields']['realtyby'] = array (
      'required' => false,
      'name' => 'realtyby',
      'vname' => 'LBL_REALTYBY',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_realtyby_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
);


$dictionary['Lead']['fields']['realty_vid'] = array (
      'required' => false,
      'name' => 'realty_vid',
      'vname' => 'LBL_REALTYVID',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 100,
      'size' => '20',
      'options' => 'lead_realtyvid_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['srok_vladenya_nedvizh'] = array (
      'required' => false,
      'name' => 'srok_vladenya_nedvizh',
      'vname' => 'LBL_SROK_VLADENIYA',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => ' Срок владения недвижимым имуществом',
      'help' => 'Срок владения недвижимым имуществом',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
    );





$dictionary['Lead']['fields']['orgname']=array (
      'required' => false,
      'name' => 'orgname',
      'vname' => 'LBL_ORGNAME',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Наименование организации предприятия',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
);

$dictionary['Lead']['fields']['org_legal_form'] = array (
      'required' => false,
      'name' => 'org_legal_form',
      'vname' => 'LBL_ORGLEGALFORM',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_orglegalform_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['org_size'] = array (
      'required' => false,
      'name' => 'org_size',
      'vname' => 'LBL_ORGSIZE',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_orgsize_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['org_sphere'] = array (
      'required' => false,
      'name' => 'org_sphere',
      'vname' => 'LBL_ORGSPHERE',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_orgsphere_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['org_position'] = array (
      'required' => false,
      'name' => 'org_position',
      'vname' => 'LBL_ORGPOSITION',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_orgposition_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['org_specialization']=array (
      'required' => false,
      'name' => 'org_specialization',
      'vname' => 'LBL_ORGSPECIALIZATION',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Специализация (например, наладчик, машинист и т.д.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '255',
      'size' => '20',
);


$dictionary['Lead']['fields']['orgwork_date_start'] = array (
      'required' => false,
      'name' => 'orgwork_date_start',
      'vname' => 'LBL_ORGDATESTART',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Дата создания организации/предприятии и/или дата приема на работу (мес, год)',
      'help' => 'Дата создания организации/предприятии и/или дата приема на работу (мес, год)',
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

$dictionary['Lead']['fields']['org_owner'] = array (
      'required' => false,
      'name' => 'org_owner',
      'vname' => 'LBL_ORGOWNER',
      'type' => 'bool',
      'massupdate' => 0,
      'default' => '0',
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
      'len' => '255',
      'size' => '20',
);

$dictionary['Lead']['fields']['org_work_months']=array (
      'required' => false,
      'name' => 'org_work_months',
      'vname' => 'LBL_ORGWORKMONTH',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Срок деятельности в данной организации/предприятии (мес.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '2',
      'size' => '5',
);

$dictionary['Lead']['fields']['org_work_years'] = array (
      'required' => false,
      'name' => 'org_work_years',
      'vname' => 'LBL_ORGWORKYEARS',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Срок деятельности в данной организации/предприятии (лет)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);


$dictionary['Lead']['fields']['org_workstage_months']=array (
      'required' => false,
      'name' => 'org_workstage_months',
      'vname' => 'LBL_ORGWORKSTAGEMONTH',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Общий срок предпринимательства/трудового стажа (мес.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '2',
      'size' => '5',
);

$dictionary['Lead']['fields']['org_workstage_years']=array (
      'required' => false,
      'name' => 'org_workstage_years',
      'vname' => 'LBL_ORGWORKSTAGEYEARS',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'Общий срок предпринимательства/трудового стажа (лет)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '',
      'size' => '5',
);


$dictionary['Lead']['fields']['org_earn_method'] = array (
      'required' => false,
      'name' => 'org_earn_method',
      'vname' => 'LBL_EARNMETHOD',
      'type' => 'multienum',
      'massupdate' => 0,
      'default' => '^^',
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'size' => '20',
      'options' => 'lead_earnmethod_list',
      'studio' => 'visible',
      'isMultiSelect' => true,
);


$dictionary['Lead']['fields']['org_earn_level'] = array (
      'required' => false,
      'name' => 'org_earn_level',
      'vname' => 'LBL_ORGEARNLEVEL',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_orgearnlevel_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['org_debentures'] = array (
      'required' => false,
      'name' => 'org_debentures',
      'vname' => 'LBL_DEBENTURES',
      'type' => 'bool',
      'massupdate' => 0,
      'default' => '0',
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
      'len' => '255',
      'size' => '20',
);


$dictionary['Lead']['fields']['debet_type'] = array (
      'required' => false,
      'name' => 'debet_type',
      'vname' => 'LBL_DEBETTYPE',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_debettype_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['debet_type_level'] = array (
      'required' => false,
      'name' => 'debet_type_level',
      'vname' => 'LBL_DEBETTYPELEVEL',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_debettypelevel_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['level_volume'] = array (
      'required' => false,
      'name' => 'level_volume',
      'vname' => 'LBL_LEVELVOLUME',
      'type' => 'enum',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => '',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => '',
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => 50,
      'size' => '20',
      'options' => 'lead_levelvolume_list',
      'studio' => 'visible',
      'dependency' => false,
);

$dictionary['Lead']['fields']['room1_number']=array (
      'required' => false,
      'name' => 'room1_number',
      'vname' => 'LBL_ROOM1NUMBER',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'номер помещения в доме (квартиры, комнаты и др.))',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);

$dictionary['Lead']['fields']['room2_number']=array (
      'required' => false,
      'name' => 'room2_number',
      'vname' => 'LBL_ROOM2NUMBER',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'номер помещения в доме (квартиры, комнаты и др.))',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);

$dictionary['Lead']['fields']['flat1_dateregister'] = array (
      'required' => false,
      'name' => 'flat1_dateregister',
      'vname' => 'LBL_DATEREGISTER',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Дата регистрации постоянного места проживания',
      'help' => 'Дата регистрации постоянного места проживания',
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


$dictionary['Lead']['fields']['regist_term_months_flat1']=array (
      'required' => false,
      'name' => 'regist_term_months_flat1',
      'vname' => 'LBL_REGTERMMONTHSFL1',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Срок регистрации по данному адресу(мес.)',
      'help' => 'Срок регистрации по данному адресу(мес.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);


$dictionary['Lead']['fields']['regist_term_years_flat1']=array (
      'required' => false,
      'name' => 'regist_term_years_flat1',
      'vname' => 'LBL_REGTERMНYEARSFL1',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Срок регистрации по данному адресу(лет)',
      'help' => 'Срок регистрации по данному адресу(лет)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);


$dictionary['Lead']['fields']['flat2_datelivestart'] = array (
      'required' => false,
      'name' => 'flat2_datelivestart',
      'vname' => 'LBL_DATELIVESTART',
      'type' => 'date',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Дата начала проживания',
      'help' => 'Дата начала проживания',
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



$dictionary['Lead']['fields']['regist_term_months_flat2']=array (
      'required' => false,
      'name' => 'regist_term_months_flat2',
      'vname' => 'LBL_REGTERMMONTHSFL2',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Срок проживания(мес.)',
      'help' => 'Срок проживания(мес.)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);


$dictionary['Lead']['fields']['regist_term_years_flat2'] = array (
      'required' => false,
      'name' => 'regist_term_years_flat2',
      'vname' => 'LBL_REGTERMНYEARSFL2',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Срок проживания (лет)',
      'help' => 'Срок проживания (лет)',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);




$dictionary['Lead']['fields']['work_address_street'] = array (
      'required' => false,
      'name' => 'work_address_street',
      'vname' => 'LBL_WORK_ADDRESS_STREET',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Адрес места работы улица',
      'help' => 'Адрес места работы улица',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
    );


$dictionary['Lead']['fields']['work_address_city'] = array (
      'required' => false,
      'name' => 'work_address_city',
      'vname' => 'LBL_WORK_ADDRESS_CITY',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Город',
      'help' => 'Город',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
);


$dictionary['Lead']['fields']['work_address_state'] = array (
      'required' => false,
      'name' => 'work_address_state',
      'vname' => 'LBL_WORK_ADDRESS_STATE',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Область',
      'help' => 'Область',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
);



$dictionary['Lead']['fields']['work_address_index'] = array (
      'required' => false,
      'name' => 'work_address_index',
      'vname' => 'LBL_WORK_ADDRESS_INDEX',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Индекс',
      'help' => 'Индекс',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
);


$dictionary['Lead']['fields']['work_address_country'] = array (
      'required' => false,
      'name' => 'work_address_country',
      'vname' => 'LBL_WORK_ADDRESS_COUNTRY',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Страна',
      'help' => 'Страна',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '150',
      'size' => '20',
);


$dictionary['Lead']['fields']['work_room_number']=array (
      'required' => false,
      'name' => 'work_room_number',
      'vname' => 'LBL_WORKROOMNUM',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => '',
      'help' => 'номер помещения в доме (квартиры, комнаты и др.))',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '4',
      'size' => '5',
);


$dictionary['Lead']['fields']['skype_account'] = array (
      'required' => false,
      'name' => 'skype_account',
      'vname' => 'LBL_SKYPE',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Скайп',
      'help' => 'Скайп',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '40',
      'size' => '20',
);


$dictionary['Lead']['fields']['viber'] = array (
      'required' => false,
      'name' => 'viber',
      'vname' => 'LBL_VIBER',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Вайбер',
      'help' => 'Вайбер',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '40',
      'size' => '20',
);


$dictionary['Lead']['fields']['facebook'] = array (
      'required' => false,
      'name' => 'facebook',
      'vname' => 'LBL_FACEBOOK',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть Facebook',
      'help' => 'ссылка на социальную сеть Facebook',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);

$dictionary['Lead']['fields']['vk'] = array (
      'required' => false,
      'name' => 'vk',
      'vname' => 'LBL_VK',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть вКонтакте',
      'help' => 'ссылка на социальную сеть вКонтакте',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);




$dictionary['Lead']['fields']['twitter'] = array (
      'required' => false,
      'name' => 'twitter',
      'vname' => 'LBL_TWITTER',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть Twitter',
      'help' => 'ссылка на социальную сеть Twitter',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);




$dictionary['Lead']['fields']['odnokl'] = array (
      'required' => false,
      'name' => 'odnokl',
      'vname' => 'LBL_ODNOKL',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть Одноклассники',
      'help' => 'ссылка на социальную сеть Одноклассники',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);




$dictionary['Lead']['fields']['googleplus'] = array (
      'required' => false,
      'name' => 'googleplus',
      'vname' => 'LBL_GOOGLEPLUS',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть Google +',
      'help' => 'ссылка на социальную сеть Google +',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);


$dictionary['Lead']['fields']['instagram'] = array (
      'required' => false,
      'name' => 'instagram',
      'vname' => 'LBL_INSTAGRAM',
      'type' => 'url',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'ссылка на социальную сеть Instagram',
      'help' => 'ссылка на социальную сеть Instagram',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
      'gen' => '0',
      'link_target' => '_blank',
);

$dictionary['Lead']['fields']['phone_addr_registr'] = array (
      'required' => false,
      'name' => 'phone_addr_registr',
      'vname' => 'LBL_PHONE_ADDR_REGISTR',
      'type' => 'phone',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Номер телефона по адресу регистрации',
      'help' => 'Номер телефона по адресу регистрации',
      'importable' => 'true',
      'duplicate_merge' => 'enabled',
      'duplicate_merge_dom_value' => '1',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
);

$dictionary['Lead']['fields']['phone_addr_fact'] = array (
      'required' => false,
      'name' => 'phone_addr_fact',
      'vname' => 'LBL_PHONE_ADDRFACT',
      'type' => 'phone',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Номер телефона по фактическому адресу проживания',
      'help' => 'Номер телефона по фактическому адресу проживания',
      'importable' => 'true',
      'duplicate_merge' => 'enabled',
      'duplicate_merge_dom_value' => '1',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
);


$dictionary['Lead']['fields']['phone_contact_face'] = array (
      'required' => false,
      'name' => 'phone_contact_face',
      'vname' => 'LBL_PHONE_CONTACTFACE',
      'type' => 'phone',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Номер телефона лица для контакта',
      'help' => 'Номер телефона лица для контакта',
      'importable' => 'true',
      'duplicate_merge' => 'enabled',
      'duplicate_merge_dom_value' => '1',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '100',
      'size' => '20',
      'dbType' => 'varchar',
);


$dictionary['Lead']['fields']['account_num'] = array (
      'required' => false,
      'name' => 'account_num',
      'vname' => 'LBL_ACCOUNTNUM',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Скайп',
      'help' => 'Скайп',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '40',
      'size' => '20',
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
      'rows' => '5',
      'cols' => '20',
    );

$dictionary['Lead']['fields']['bank_mfo'] = array (
      'required' => false,
      'name' => 'bank_mfo',
      'vname' => 'LBL_BANKMFO',
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
      'len' => '40',
      'size' => '20',
);

$dictionary['Lead']['fields']['bank_emitent_name'] = array (
      'required' => false,
      'name' => 'bank_emitent_name',
      'vname' => 'LBL_BANKEMITENTNAME',
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
      'rows' => '5',
      'cols' => '20',
);

$dictionary['Lead']['fields']['bank_emitent_mfo'] = array (
      'required' => false,
      'name' => 'bank_emitent_mfo',
      'vname' => 'LBL_BANKEMITENTMFO',
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
      'len' => '40',
      'size' => '20',
);

$dictionary['Lead']['fields']['card_num'] = array (
      'required' => false,
      'name' => 'card_num',
      'vname' => 'LBL_CARDNUM',
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
      'len' => '40',
      'size' => '20',
);


$dictionary['Lead']['fields']['overdraft'] = array (
      'required' => false,
      'name' => 'overdraft',
      'vname' => 'LBL_OVERDRAFT',
      'type' => 'decimal',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Овердрафт',
      'help' => 'Овердрафт',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => false,
      'reportable' => true,
      'readonly' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '18',
      'size' => '20',
      'enable_range_search' => false,
      'precision' => '3',
    );

$dictionary['Lead']['fields']['credit_rating'] = array (
      'required' => false,
      'name' => 'credit_rating',
      'vname' => 'LBL_CREDRATING',
      'type' => 'decimal',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Рейтинг кредитоспособности',
      'help' => 'Рейтинг кредитоспособности',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => false,
      'reportable' => true,
      'readonly' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '18',
      'size' => '20',
      'enable_range_search' => false,
      'precision' => '3',
);


$dictionary['Lead']['fields']['age'] = array (
      'required' => false,
      'name' => 'age',
      'vname' => 'LBL_AGE',
      'type' => 'int',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Возраст',
      'help' => 'Возраст',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '3',
      'size' => '20',
      'enable_range_search' => false,
      'disable_num_format' => '',
      'min' => false,
      'max' => false,
    );


$dictionary['Lead']['fields']['first_name2'] = array (
      'required' => false,
      'name' => 'first_name2',
      'vname' => 'LBL_FIRSTNAME2',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'История смены имени',
      'help' => 'История смены имени',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '40',
      'size' => '20',
);

$dictionary['Lead']['fields']['last_name2'] = array (
      'required' => false,
      'name' => 'last_name2',
      'vname' => 'LBL_LASTNAME2',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'История смены фамилии',
      'help' => 'История смены фамилии',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '40',
      'size' => '20',
);


$dictionary['Lead']['fields']['patronymic'] = array (
      'required' => false,
      'name' => 'patronymic',
      'vname' => 'LBL_PATRONIMYC',
      'type' => 'varchar',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Отчество',
      'help' => 'Отчество',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '40',
      'size' => '20',
);


$dictionary['Lead']['fields']['message_to_assigned'] = array (
      'required' => false,
      'name' => 'message_to_assigned',
      'vname' => 'LBL_MESTOASIGNED',
      'type' => 'text',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Сообщение для назначаемого пользователя',
      'help' => 'Сообщение для назначаемого пользователя',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'enabled',
      'len' => '0',
      'size' => '40',
      'rows'=>'6',
      'cols'=>'80',
);


$dictionary['Lead']['fields']['child_count'] = array (
      'required' => false,
      'name' => 'child_count',
      'vname' => 'LBL_CHILDCOUNT',
      'type' => 'int',
      'massupdate' => 0,
      'no_default' => false,
      'comments' => 'Количество детей',
      'help' => 'Количество детей',
      'importable' => 'true',
      'duplicate_merge' => 'disabled',
      'duplicate_merge_dom_value' => '0',
      'audited' => false,
      'inline_edit' => true,
      'reportable' => true,
      'unified_search' => false,
      'merge_filter' => 'disabled',
      'len' => '2',
      'size' => '5',
      'enable_range_search' => false,
      'disable_num_format' => '1',
      'min' => false,
      'max' => false,
    
);

$dictionary['Lead']['fields']['correspondence_method'] = array (
    'required' => false,
    'name' => 'correspondence_method',
    'vname' => 'LBL_CORRESPONDENCE_METHOD',
    'type' => 'text',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Способ и адрес доставки корреспонденции',
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
    'rows'=>'10',
    'cols'=>'20',
);


$dictionary['Lead']['fields']['communicator'] = array(
    'required' => false,
    'name' => 'communicator',
    'vname' => 'LBL_COMMUNICATOR',
    'type' => 'multitextfield',
    'dbType' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'false',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'dbType' => 'varchar',
    'len' => '255',
    'size' => '20',

);

$dictionary['Lead']['fields']['lead_parents'] = array (
    'required' => false,
    'name' => 'lead_parents',
    'vname' => 'LBL_LEAD_PARENTS',
    'type' => 'enum',
    'massupdate' => 0,
    'default' => '',
    'no_default' => false,
    'comments' => '',
    'help' => '',
    'importable' => 'false',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'disabled',
    'len' => 100,
    'size' => '20',
    'options' => 'parents_type_list',
    'studio' => 'visible',
    'dependency' => false,
);

$dictionary['Lead']['fields']['contact_person_name'] = array (
    'required' => false,
    'name' => 'contact_person_name',
    'vname' => 'LBL_CONTACT_PERSON_NAME',
    'type' => 'varchar',
    'massupdate' => 0,
    'no_default' => false,
    'comments' => 'Имя контакта для связи',
    'help' => 'Имя контакта для связи',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'inline_edit' => true,
    'reportable' => true,
    'unified_search' => false,
    'merge_filter' => 'enabled',
    'len' => '40',
    'size' => '20',
);



// created: 2017-09-20 10:40:57
$dictionary["Lead"]["fields"]["leads_aos_contracts_1"] = array (
  'name' => 'leads_aos_contracts_1',
  'type' => 'link',
  'relationship' => 'leads_aos_contracts_1',
  'source' => 'non-db',
  'module' => 'AOS_Contracts',
  'bean_name' => 'AOS_Contracts',
  'side' => 'right',
  'vname' => 'LBL_LEADS_AOS_CONTRACTS_1_FROM_AOS_CONTRACTS_TITLE',
);


// created: 2017-09-20 09:55:31
$dictionary["Lead"]["fields"]["leads_bh_autotransport_1"] = array (
  'name' => 'leads_bh_autotransport_1',
  'type' => 'link',
  'relationship' => 'leads_bh_autotransport_1',
  'source' => 'non-db',
  'module' => 'bh_Autotransport',
  'bean_name' => 'bh_Autotransport',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_AUTOTRANSPORT_1_FROM_BH_AUTOTRANSPORT_TITLE',
);


// created: 2017-09-20 14:47:10
$dictionary["Lead"]["fields"]["leads_bh_lead_adress_1"] = array (
  'name' => 'leads_bh_lead_adress_1',
  'type' => 'link',
  'relationship' => 'leads_bh_lead_adress_1',
  'source' => 'non-db',
  'module' => 'bh_lead_adress',
  'bean_name' => 'bh_lead_adress',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_LEAD_ADRESS_1_FROM_BH_LEAD_ADRESS_TITLE',
);


// created: 2017-10-04 11:34:22
$dictionary["Lead"]["fields"]["leads_bh_marketing_response_1"] = array (
  'name' => 'leads_bh_marketing_response_1',
  'type' => 'link',
  'relationship' => 'leads_bh_marketing_response_1',
  'source' => 'non-db',
  'module' => 'bh_marketing_response',
  'bean_name' => 'bh_marketing_response',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_MARKETING_RESPONSE_1_FROM_BH_MARKETING_RESPONSE_TITLE',
);


// created: 2017-09-15 14:36:18
$dictionary["Lead"]["fields"]["leads_bh_packet_activation_1"] = array (
  'name' => 'leads_bh_packet_activation_1',
  'type' => 'link',
  'relationship' => 'leads_bh_packet_activation_1',
  'source' => 'non-db',
  'module' => 'bh_packet_activation',
  'bean_name' => 'bh_packet_activation',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PACKET_ACTIVATION_1_FROM_BH_PACKET_ACTIVATION_TITLE',
);


// created: 2017-09-22 12:49:02
$dictionary["Lead"]["fields"]["leads_bh_passports_1"] = array (
  'name' => 'leads_bh_passports_1',
  'type' => 'link',
  'relationship' => 'leads_bh_passports_1',
  'source' => 'non-db',
  'module' => 'bh_passports',
  'bean_name' => 'bh_passports',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PASSPORTS_1_FROM_BH_PASSPORTS_TITLE',
);


// created: 2017-09-25 17:47:01
$dictionary["Lead"]["fields"]["leads_bh_phones_1"] = array (
  'name' => 'leads_bh_phones_1',
  'type' => 'link',
  'relationship' => 'leads_bh_phones_1',
  'source' => 'non-db',
  'module' => 'bh_phones',
  'bean_name' => 'bh_phones',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PHONES_1_FROM_BH_PHONES_TITLE',
);


// created: 2017-09-21 17:04:51
$dictionary["Lead"]["fields"]["leads_bh_place_of_work_1"] = array (
  'name' => 'leads_bh_place_of_work_1',
  'type' => 'link',
  'relationship' => 'leads_bh_place_of_work_1',
  'source' => 'non-db',
  'module' => 'bh_place_of_work',
  'bean_name' => 'bh_place_of_work',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_PLACE_OF_WORK_1_FROM_BH_PLACE_OF_WORK_TITLE',
);


// created: 2017-09-20 10:13:23
$dictionary["Lead"]["fields"]["leads_bh_realty_1"] = array (
  'name' => 'leads_bh_realty_1',
  'type' => 'link',
  'relationship' => 'leads_bh_realty_1',
  'source' => 'non-db',
  'module' => 'bh_Realty',
  'bean_name' => 'bh_Realty',
  'side' => 'right',
  'vname' => 'LBL_LEADS_BH_REALTY_1_FROM_BH_REALTY_TITLE',
);


// created: 2017-09-14 09:55:28
$dictionary["Lead"]["fields"]["leads_cases_1"] = array (
  'name' => 'leads_cases_1',
  'type' => 'link',
  'relationship' => 'leads_cases_1',
  'source' => 'non-db',
  'module' => 'Cases',
  'bean_name' => 'Case',
  'side' => 'right',
  'vname' => 'LBL_LEADS_CASES_1_FROM_CASES_TITLE',
);


// created: 2017-09-14 11:00:22
$dictionary["Lead"]["fields"]["leads_documents_1"] = array (
  'name' => 'leads_documents_1',
  'type' => 'link',
  'relationship' => 'leads_documents_1',
  'source' => 'non-db',
  'module' => 'Documents',
  'bean_name' => 'Document',
  'side' => 'right',
  'vname' => 'LBL_LEADS_DOCUMENTS_1_FROM_DOCUMENTS_TITLE',
);


// created: 2017-09-21 15:18:33
$dictionary["Lead"]["fields"]["leads_leads_2"] = array (
  'name' => 'leads_leads_2',
  'type' => 'link',
  'relationship' => 'leads_leads_2',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_L_TITLE',
  'id_name' => 'leads_leads_2leads_ida',
);
$dictionary["Lead"]["fields"]["leads_leads_2_name"] = array (
  'name' => 'leads_leads_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_L_TITLE',
  'save' => true,
  'id_name' => 'leads_leads_2leads_ida',
  'link' => 'leads_leads_2',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Lead"]["fields"]["leads_leads_2leads_ida"] = array (
  'name' => 'leads_leads_2leads_ida',
  'type' => 'link',
  'relationship' => 'leads_leads_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_LEADS_2_FROM_LEADS_R_TITLE',
);


 // created: 2017-09-26 17:28:15
$dictionary['Lead']['fields']['first_name']['required']=true;
$dictionary['Lead']['fields']['first_name']['inline_edit']=true;
$dictionary['Lead']['fields']['first_name']['comments']='First name of the contact';
$dictionary['Lead']['fields']['first_name']['merge_filter']='disabled';

 

 // created: 2017-09-03 11:24:49
$dictionary['Lead']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:49
$dictionary['Lead']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:49
$dictionary['Lead']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2017-09-03 11:24:49
$dictionary['Lead']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 

 // created: 2017-09-26 17:28:01
$dictionary['Lead']['fields']['last_name']['required']=false;
$dictionary['Lead']['fields']['last_name']['inline_edit']=true;
$dictionary['Lead']['fields']['last_name']['comments']='Last name of the contact';
$dictionary['Lead']['fields']['last_name']['merge_filter']='disabled';

 

 // created: 2017-08-21 10:47:23
$dictionary['Lead']['fields']['lead_status']['options']='leed_status_list';

 

 // created: 2017-08-29 10:22:49

 
?>