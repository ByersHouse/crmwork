<?php
$viewdefs ['Leads'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'hidden' => 
        array (
          0 => '<input type="hidden" name="prospect_id" value="{if isset($smarty.request.prospect_id)}{$smarty.request.prospect_id}{else}{$bean->prospect_id}{/if}">',
          1 => '<input type="hidden" name="account_id" value="{if isset($smarty.request.account_id)}{$smarty.request.account_id}{else}{$bean->account_id}{/if}">',
          2 => '<input type="hidden" name="contact_id" value="{if isset($smarty.request.contact_id)}{$smarty.request.contact_id}{else}{$bean->contact_id}{/if}">',
          3 => '<input type="hidden" name="opportunity_id" value="{if isset($smarty.request.opportunity_id)}{$smarty.request.opportunity_id}{else}{$bean->opportunity_id}{/if}">',
        ),
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'javascript' => '<script type="text/javascript" language="Javascript">function copyAddressRight(form)  {ldelim} form.alt_address_street.value = form.primary_address_street.value;form.alt_address_city.value = form.primary_address_city.value;form.alt_address_state.value = form.primary_address_state.value;form.alt_address_postalcode.value = form.primary_address_postalcode.value;form.alt_address_country.value = form.primary_address_country.value;return true; {rdelim} function copyAddressLeft(form)  {ldelim} form.primary_address_street.value =form.alt_address_street.value;form.primary_address_city.value = form.alt_address_city.value;form.primary_address_state.value = form.alt_address_state.value;form.primary_address_postalcode.value =form.alt_address_postalcode.value;form.primary_address_country.value = form.alt_address_country.value;return true; {rdelim} </script>',
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL8' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL7' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL6' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL4' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ADVANCED' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'custom/modules/Leads/js/ledit.js',
        ),
      ),
    ),
    'panels' => 
    array (
      'LBL_CONTACT_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'photo',
            'studio' => 'visible',
            'label' => 'LBL_PHOTO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'customCode' => '{html_options name="salutation" id="salutation" options=$fields.salutation.options selected=$fields.salutation.value}&nbsp;<input name="first_name"  id="first_name" size="25" maxlength="25" type="text" value="{$fields.first_name.value}">',
          ),
          1 => 
          array (
            'name' => 'first_name2',
            'label' => 'LBL_FIRSTNAME2',
          ),
        ),
        2 => 
        array (
          0 => 'last_name',
          1 => 
          array (
            'name' => 'last_name2',
            'label' => 'LBL_LASTNAME2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'patronymic',
            'label' => 'LBL_PATRONIMYC',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'resident',
            'label' => 'LBL_RESIDENT',
          ),
          1 => 
          array (
            'name' => 'inn',
            'label' => 'LBL_INN',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'lead_status',
            'studio' => 'visible',
            'label' => 'LBL_LEAD_STATUS',
          ),
          1 => 
          array (
            'name' => 'lead_sex',
            'studio' => 'visible',
            'label' => 'LBL_LEAD_SEX',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'education',
            'studio' => 'visible',
            'label' => 'LBL_EDUCATION',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'date_birthday',
            'label' => 'LBL_DATE_BIRTHDAY',
          ),
          1 => 
          array (
            'name' => 'soc_status',
            'studio' => 'visible',
            'label' => 'LBL_SOC_STATUS',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'age',
            'label' => 'LBL_AGE',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'placebirth',
            'label' => 'LBL_PLACEBIRTH',
          ),
        ),
        10 => 
        array (
          0 => 'phone_fax',
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'account_name',
            'type' => 'varchar',
            'validateDependency' => false,
            'customCode' => '<input name="account_name" id="EditView_account_name" {if ($fields.converted.value == 1)}disabled="true"{/if} size="30" maxlength="255" type="text" value="{$fields.account_name.value}">',
          ),
          1 => 'website',
        ),
        12 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'bh_card_ident_leads_name',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'bh_marketing_directorate_leads_1_name',
          ),
        ),
      ),
      'lbl_editview_panel8' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'credit_rating',
            'label' => 'LBL_CREDRATING',
          ),
          1 => 
          array (
            'name' => 'overdraft',
            'label' => 'LBL_OVERDRAFT',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'card_num',
            'label' => 'LBL_CARDNUM',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'bank_name',
            'label' => 'LBL_BANKNAME',
          ),
          1 => 
          array (
            'name' => 'bank_emitent_name',
            'studio' => 'visible',
            'label' => 'LBL_BANKEMITENTNAME',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bank_mfo',
            'label' => 'LBL_BANKMFO',
          ),
          1 => 
          array (
            'name' => 'bank_emitent_mfo',
            'label' => 'LBL_BANKEMITENTMFO',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'primary_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'primary',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
          ),
          1 => 
          array (
            'name' => 'alt_address_street',
            'hideLabel' => true,
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'alt',
              'copy' => 'primary',
              'rows' => 2,
              'cols' => 30,
              'maxlength' => 150,
            ),
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'room1_number',
            'label' => 'LBL_ROOM1NUMBER',
          ),
          1 => 
          array (
            'name' => 'room2_number',
            'label' => 'LBL_ROOM2NUMBER',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'flat1_dateregister',
            'label' => 'LBL_DATEREGISTER',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'regist_term_months_flat1',
            'label' => 'LBL_REGTERMMONTHSFL1',
          ),
          1 => 
          array (
            'name' => 'regist_term_months_flat2',
            'label' => 'LBL_REGTERMMONTHSFL2',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'regist_term_years_flat1',
            'label' => 'LBL_REGTERMНYEARSFL1',
          ),
          1 => 
          array (
            'name' => 'regist_term_years_flat2',
            'label' => 'LBL_REGTERMНYEARSFL2',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'work_address_street',
            'label' => 'LBL_WORK_ADDRESS_STREET',
          ),
          1 => 'phone_work',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'work_address_city',
            'label' => 'LBL_WORK_ADDRESS_CITY',
          ),
          1 => 'phone_mobile',
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'phone_addr_fact',
            'label' => 'LBL_PHONE_ADDRFACT',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'work_address_state',
            'label' => 'LBL_WORK_ADDRESS_STATE',
          ),
          1 => 
          array (
            'name' => 'phone_addr_registr',
            'label' => 'LBL_PHONE_ADDR_REGISTR',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'work_address_index',
            'label' => 'LBL_WORK_ADDRESS_INDEX',
          ),
          1 => 
          array (
            'name' => 'phone_contact_face',
            'label' => 'LBL_PHONE_CONTACTFACE',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'work_address_country',
            'label' => 'LBL_WORK_ADDRESS_COUNTRY',
          ),
          1 => 
          array (
            'name' => 'skype_account',
            'label' => 'LBL_SKYPE',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'work_room_number',
            'label' => 'LBL_WORKROOMNUM',
          ),
          1 => 
          array (
            'name' => 'viber',
            'label' => 'LBL_VIBER',
          ),
        ),
        12 => 
        array (
          0 => 'email1',
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'facebook',
            'label' => 'LBL_FACEBOOK',
          ),
          1 => 
          array (
            'name' => 'vk',
            'label' => 'LBL_VK',
          ),
        ),
        14 => 
        array (
          0 => 
          array (
            'name' => 'twitter',
            'label' => 'LBL_TWITTER',
          ),
          1 => 
          array (
            'name' => 'googleplus',
            'label' => 'LBL_GOOGLEPLUS',
          ),
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'odnokl',
            'label' => 'LBL_ODNOKL',
          ),
          1 => 
          array (
            'name' => 'instagram',
            'label' => 'LBL_INSTAGRAM',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'org_owner',
            'label' => 'LBL_ORGOWNER',
          ),
          1 => 
          array (
            'name' => 'orgname',
            'label' => 'LBL_ORGNAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'orgwork_date_start',
            'label' => 'LBL_ORGDATESTART',
          ),
          1 => 
          array (
            'name' => 'org_legal_form',
            'studio' => 'visible',
            'label' => 'LBL_ORGLEGALFORM',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'org_size',
            'studio' => 'visible',
            'label' => 'LBL_ORGSIZE',
          ),
          1 => 
          array (
            'name' => 'org_sphere',
            'studio' => 'visible',
            'label' => 'LBL_ORGSPHERE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'org_position',
            'studio' => 'visible',
            'label' => 'LBL_ORGPOSITION',
          ),
          1 => 
          array (
            'name' => 'org_specialization',
            'label' => 'LBL_ORGSPECIALIZATION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'org_work_years',
            'label' => 'LBL_ORGWORKYEARS',
          ),
          1 => 
          array (
            'name' => 'org_work_months',
            'label' => 'LBL_ORGWORKMONTH',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'org_workstage_years',
            'label' => 'LBL_ORGWORKSTAGEYEARS',
          ),
          1 => 
          array (
            'name' => 'org_workstage_months',
            'label' => 'LBL_ORGWORKSTAGEMONTH',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'org_earn_method',
            'studio' => 'visible',
            'label' => 'LBL_EARNMETHOD',
          ),
          1 => 
          array (
            'name' => 'org_earn_level',
            'studio' => 'visible',
            'label' => 'LBL_ORGEARNLEVEL',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'org_debentures',
            'label' => 'LBL_DEBENTURES',
          ),
          1 => 
          array (
            'name' => 'debet_type',
            'studio' => 'visible',
            'label' => 'LBL_DEBETTYPE',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'debet_type_level',
            'studio' => 'visible',
            'label' => 'LBL_DEBETTYPELEVEL',
          ),
          1 => 
          array (
            'name' => 'level_volume',
            'studio' => 'visible',
            'label' => 'LBL_LEVELVOLUME',
          ),
        ),
      ),
      'lbl_editview_panel7' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'transport_owner1',
            'studio' => 'visible',
            'label' => 'LBL_TRANSOWNER1',
          ),
          1 => 
          array (
            'name' => 'transport_owner2',
            'studio' => 'visible',
            'label' => 'LBL_TRANSOWNER2',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'how_buytransport1',
            'studio' => 'visible',
            'label' => 'LBL_HOWBUYTRANS1',
          ),
          1 => 
          array (
            'name' => 'how_buytransport2',
            'studio' => 'visible',
            'label' => 'LBL_HOWBUYTRANS2',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'yearissuetrans1',
            'label' => 'LBL_YEARISSUETR1',
          ),
          1 => 
          array (
            'name' => 'yearissuetrans2',
            'label' => 'LBL_YEARISSUETR2',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'trans1_manufacturer',
            'studio' => 'visible',
            'label' => 'LBL_TRANS1MANUFACT',
          ),
          1 => 
          array (
            'name' => 'trans2_manufacturer',
            'studio' => 'visible',
            'label' => 'LBL_TRANS2MANUFACT',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'model_trans1',
            'label' => 'LBL_MODEL_TRANS1',
          ),
          1 => 
          array (
            'name' => 'model_trans2',
            'label' => 'LBL_MODEL_TRANS2',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'volume_trans1',
            'label' => 'LBL_VOLUME_TRANS1',
          ),
          1 => 
          array (
            'name' => 'volume_trans2',
            'label' => 'LBL_VOLUME_TRANS2',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'fuel_type_trans1',
            'studio' => 'visible',
            'label' => 'LBL_FUELTYPETRANS1',
          ),
          1 => 
          array (
            'name' => 'fuel_type_trans2',
            'studio' => 'visible',
            'label' => 'LBL_FUELTYPETRANS2',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'type_owner_trans1',
            'studio' => 'visible',
            'label' => 'LBL_TYPEOWNERTRANS1',
          ),
          1 => 
          array (
            'name' => 'type_owner_trans2',
            'studio' => 'visible',
            'label' => 'LBL_TYPEOWNERTRANS2',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'zalog_trans1',
            'label' => 'LBL_ZALOGTRANS1',
          ),
          1 => 
          array (
            'name' => 'zalog_trans2',
            'label' => 'LBL_ZALOGTRANS2',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'transport_owner3',
            'studio' => 'visible',
            'label' => 'LBL_TRANSOWNER3',
          ),
          1 => 
          array (
            'name' => 'transport_owner4',
            'studio' => 'visible',
            'label' => 'LBL_TRANSOWNER4',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'how_buytransport3',
            'studio' => 'visible',
            'label' => 'LBL_HOWBUYTRANS3',
          ),
          1 => 
          array (
            'name' => 'how_buytransport4',
            'studio' => 'visible',
            'label' => 'LBL_HOWBUYTRANS4',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'yearissuetrans3',
            'label' => 'LBL_YEARISSUETR3',
          ),
          1 => 
          array (
            'name' => 'yearissuetrans4',
            'label' => 'LBL_YEARISSUETR4',
          ),
        ),
        12 => 
        array (
          0 => 
          array (
            'name' => 'trans3_manufacturer',
            'studio' => 'visible',
            'label' => 'LBL_TRANS3MANUFACT',
          ),
          1 => 
          array (
            'name' => 'trans4_manufacturer',
            'studio' => 'visible',
            'label' => 'LBL_TRANS4MANUFACT',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'model_trans3',
            'label' => 'LBL_MODEL_TRANS3',
          ),
          1 => 
          array (
            'name' => 'model_trans4',
            'label' => 'LBL_MODEL_TRANS4',
          ),
        ),
        14 => 
        array (
          0 => 
          array (
            'name' => 'volume_trans3',
            'label' => 'LBL_VOLUME_TRANS3',
          ),
          1 => 
          array (
            'name' => 'volume_trans4',
            'label' => 'LBL_VOLUME_TRANS4',
          ),
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'fuel_type_trans3',
            'studio' => 'visible',
            'label' => 'LBL_FUELTYPETRANS3',
          ),
          1 => 
          array (
            'name' => 'fuel_type_trans4',
            'studio' => 'visible',
            'label' => 'LBL_FUELTYPETRANS4',
          ),
        ),
        16 => 
        array (
          0 => 
          array (
            'name' => 'type_owner_trans3',
            'studio' => 'visible',
            'label' => 'LBL_TYPEOWNERTRANS3',
          ),
          1 => 
          array (
            'name' => 'type_owner_trans4',
            'studio' => 'visible',
            'label' => 'LBL_TYPEOWNERTRANS4',
          ),
        ),
        17 => 
        array (
          0 => 
          array (
            'name' => 'zalog_trans3',
            'label' => 'LBL_ZALOGTRANS3',
          ),
          1 => 
          array (
            'name' => 'zalog_trans4',
            'label' => 'LBL_ZALOGTRANS4',
          ),
        ),
      ),
      'lbl_editview_panel6' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'realty',
            'studio' => 'visible',
            'label' => 'LBL_REALTY',
          ),
          1 => 
          array (
            'name' => 'realtyby',
            'studio' => 'visible',
            'label' => 'LBL_REALTYBY',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'realty_vid',
            'studio' => 'visible',
            'label' => 'LBL_REALTYVID',
          ),
          1 => 
          array (
            'name' => 'statliveplace',
            'studio' => 'visible',
            'label' => 'LBL_STATUS_LIVEPLACE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'srok_vladenya_nedvizh',
            'label' => 'LBL_SROK_VLADENIYA',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'family_status',
            'studio' => 'visible',
            'label' => 'LBL_FAMILYSTATUS',
          ),
          1 => 
          array (
            'name' => 'child_count',
            'label' => 'LBL_CHILDCOUNT',
          ),
        ),
      ),
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'problem_law',
            'studio' => 'visible',
            'label' => 'LBL_PROBLEMLAW',
          ),
          1 => 
          array (
            'name' => 'judded_by_article',
            'label' => 'LBL_JUDDED_BY',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'ukrpasport_nom',
            'label' => 'LBL_UKRPASPORT_NOM',
          ),
          1 => 
          array (
            'name' => 'zagrpasport_nom',
            'label' => 'LBL_ZAGPASPORT_NOM',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'ukrpas_datavidachy',
            'label' => 'LBL_UKRPASP_DATAVIDACHY',
          ),
          1 => 
          array (
            'name' => 'zagrpas_datavidachy',
            'label' => 'LBL_ZAGRPASP_DATAVIDACHY',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'zagrpas_date_end',
            'label' => 'LBL_ZAGRPASP_DATEND',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'ukrpas_kemvidan',
            'label' => 'LBL_UKRPASP_KEMVIDAN',
          ),
          1 => 
          array (
            'name' => 'zagrpas_kemvidan',
            'label' => 'LBL_ZAGRPASP_KEMVIDAN',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'pasport_nom_nerezident',
            'label' => 'LBL_PASPORTNOM_NER',
          ),
          1 => 
          array (
            'name' => 'nerezpas_date_vidachi',
            'label' => 'LBL_NEREZPASP_DATEVIDACHI',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'nerezpas_date_end',
            'label' => 'LBL_NEREZPASP_DATEEND',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'vidnazhit_nom',
            'label' => 'LBL_VIDNAZHIT',
          ),
          1 => 
          array (
            'name' => 'vidnazhit_date_vidachi',
            'label' => 'LBL_VIDNAZHIT_DATEVIDACHI',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'vidnazhit_date_end',
            'label' => 'LBL_VIDNAZHIT_DATEEND',
          ),
        ),
      ),
      'LBL_PANEL_ADVANCED' => 
      array (
        0 => 
        array (
          0 => 'status',
          1 => 'lead_source',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'status_description',
          ),
          1 => 
          array (
            'name' => 'lead_source_description',
          ),
        ),
        2 => 
        array (
          0 => 'opportunity_amount',
          1 => 'refered_by',
        ),
        3 => 
        array (
          0 => 'campaign_name',
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'message_to_assigned',
            'label' => 'LBL_MESTOASIGNED',
          ),
        ),
      ),
    ),
  ),
);
?>
