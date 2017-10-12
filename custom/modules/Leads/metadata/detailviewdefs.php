<?php
$viewdefs ['Leads'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 
          array (
            'customCode' => '{if $bean->aclAccess("edit") && !$DISABLE_CONVERT_ACTION}<input title="{$MOD.LBL_CONVERTLEAD_TITLE}" accessKey="{$MOD.LBL_CONVERTLEAD_BUTTON_KEY}" type="button" class="button" onClick="document.location=\'index.php?module=Leads&action=ConvertLead&record={$fields.id.value}\'" name="convert" value="{$MOD.LBL_CONVERTLEAD}">{/if}',
            'sugar_html' => 
            array (
              'type' => 'button',
              'value' => '{$MOD.LBL_CONVERTLEAD}',
              'htmlOptions' => 
              array (
                'title' => '{$MOD.LBL_CONVERTLEAD_TITLE}',
                'accessKey' => '{$MOD.LBL_CONVERTLEAD_BUTTON_KEY}',
                'class' => 'button',
                'onClick' => 'document.location=\'index.php?module=Leads&action=ConvertLead&record={$fields.id.value}\'',
                'name' => 'convert',
                'id' => 'convert_lead_button',
              ),
              'template' => '{if $bean->aclAccess("edit") && !$DISABLE_CONVERT_ACTION}[CONTENT]{/if}',
            ),
          ),
          4 => 'FIND_DUPLICATES',
          5 => 
          array (
            'customCode' => '<input title="{$APP.LBL_MANAGE_SUBSCRIPTIONS}" class="button" onclick="this.form.return_module.value=\'Leads\'; this.form.return_action.value=\'DetailView\';this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Leads\';" type="submit" name="Manage Subscriptions" value="{$APP.LBL_MANAGE_SUBSCRIPTIONS}">',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
                'class' => 'button',
                'id' => 'manage_subscriptions_button',
                'onclick' => 'this.form.return_module.value=\'Leads\'; this.form.return_action.value=\'DetailView\';this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Leads\';',
                'name' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
              ),
            ),
          ),
          'AOS_GENLET' => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_GENERATE_LETTER}">',
          ),
        ),
        'headerTpl' => 'modules/Leads/tpls/DetailViewHeader.tpl',
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
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Leads/Lead.js',
        ),
      ),
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL8' => 
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
    ),
    'panels' => 
    array (
      'LBL_CONTACT_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'first_name',
            'comment' => 'First name of the contact',
            'label' => 'LBL_FIRST_NAME',
          ),
          1 => 
          array (
            'name' => 'last_name',
            'comment' => 'Last name of the contact',
            'label' => 'LBL_LAST_NAME',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'patronymic',
            'label' => 'LBL_PATRONIMYC',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'resident',
            'label' => 'LBL_RESIDENT',
          ),
        ),
        3 => 
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
        4 => 
        array (
          0 => 
          array (
            'name' => 'education',
            'studio' => 'visible',
            'label' => 'LBL_EDUCATION',
          ),
          1 => 'status',
        ),
        5 => 
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
        6 => 
        array (
          0 => 'website',
          1 => 
          array (
            'name' => 'age',
            'label' => 'LBL_AGE',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'debet_type',
            'studio' => 'visible',
            'label' => 'LBL_DEBETTYPE',
          ),
          1 => 
          array (
            'name' => 'level_volume',
            'studio' => 'visible',
            'label' => 'LBL_LEVELVOLUME',
          ),
        ),
        8 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'bh_card_ident_leads_name',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'correspondence_method',
            'label' => 'LBL_CORRESPONDENCE_METHOD',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 'phone_mobile',
          1 => 'phone_work',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'phone_addr_fact',
            'label' => 'LBL_PHONE_ADDRFACT',
          ),
          1 => 
          array (
            'name' => 'phone_addr_registr',
            'label' => 'LBL_PHONE_ADDR_REGISTR',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'contact_person_name',
            'label' => 'LBL_CONTACT_PERSON_NAME',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'phone_contact_face',
            'label' => 'LBL_PHONE_CONTACTFACE',
          ),
        ),
        4 => 
        array (
          0 => 'email1',
          1 => 
          array (
            'name' => 'communicator',
            'label' => 'LBL_COMMUNICATOR',
          ),
        ),
      ),
      'lbl_editview_panel8' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'org_earn_level',
            'studio' => 'visible',
            'label' => 'LBL_ORGEARNLEVEL',
          ),
          1 => 
          array (
            'name' => 'debet_type_level',
            'studio' => 'visible',
            'label' => 'LBL_DEBETTYPELEVEL',
          ),
        ),
        1 => 
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
        2 => 
        array (
          0 => 
          array (
            'name' => 'account_num',
            'label' => 'LBL_ACCOUNTNUM',
          ),
          1 => 
          array (
            'name' => 'card_num',
            'label' => 'LBL_CARDNUM',
          ),
        ),
        3 => 
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
        4 => 
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
        5 => 
        array (
          0 => 
          array (
            'name' => 'inn',
            'label' => 'LBL_INN',
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
        1 => 
        array (
          0 => 
          array (
            'name' => 'first_name2',
            'label' => 'LBL_FIRSTNAME2',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'last_name2',
            'label' => 'LBL_LASTNAME2',
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
      'LBL_PANEL_ADVANCED' => 
      array (
        0 => 
        array (
          0 => 'opportunity_amount',
          1 => 'lead_source',
        ),
        1 => 
        array (
          0 => 'status_description',
          1 => 'lead_source_description',
        ),
        2 => 
        array (
          0 => 
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
            'name' => 'campaign_name',
            'label' => 'LBL_CAMPAIGN',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'photo',
            'studio' => 'visible',
            'label' => 'LBL_PHOTO',
          ),
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
        2 => 
        array (
          0 => 'refered_by',
        ),
      ),
    ),
  ),
);
?>
