<?php /* Smarty version 2.6.29, created on 2017-10-10 17:33:00
         compiled from cache/themes/Suite7/modules/Leads/DetailView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'cat', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 7, false),array('modifier', 'strip_semicolon', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 104, false),array('modifier', 'substr', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 367, false),array('modifier', 'to_url', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 369, false),array('modifier', 'escape', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 461, false),array('modifier', 'url2html', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 461, false),array('modifier', 'nl2br', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 461, false),array('modifier', 'explode', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 702, false),array('function', 'sugar_include', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 70, false),array('function', 'sugar_translate', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 77, false),array('function', 'counter', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 93, false),array('function', 'sugar_getimage', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 118, false),array('function', 'multienum_to_array', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 338, false),array('function', 'sugar_number_format', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 386, false),array('function', 'sugar_ajax_url', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 477, false),array('function', 'sugar_getimagepath', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 519, false),array('function', 'sugar_phone', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 546, false),array('function', 'sugar_getjspath', 'cache/themes/Suite7/modules/Leads/DetailView.tpl', 1435, false),)), $this); ?>


<?php $this->assign('preForm', "<table width='100%' border='1' cellspacing='0' cellpadding='0' class='converted_account'><tr><td><table width='100%'><tr><td>"); ?>
<?php $this->assign('displayPreform', false); ?>
<?php if (isset ( $this->_tpl_vars['bean']->contact_id ) && ! empty ( $this->_tpl_vars['bean']->contact_id )): ?>
<?php $this->assign('displayPreform', true); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_CONTACT']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_CONTACT']))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "&nbsp;<a href='index.php?module=Contacts&action=DetailView&record=") : smarty_modifier_cat($_tmp, "&nbsp;<a href='index.php?module=Contacts&action=DetailView&record="))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->contact_id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->contact_id))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "'>") : smarty_modifier_cat($_tmp, "'>"))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->contact_name) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->contact_name))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</a>") : smarty_modifier_cat($_tmp, "</a>"))); ?>
<?php endif; ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</td><td>") : smarty_modifier_cat($_tmp, "</td><td>"))); ?>
<?php if (isset ( $this->_tpl_vars['bean']->account_id ) && ! empty ( $this->_tpl_vars['bean']->account_id )): ?>
<?php $this->assign('displayPreform', true); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_ACCOUNT']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_ACCOUNT']))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "&nbsp;<a href='index.php?module=Accounts&action=DetailView&record=") : smarty_modifier_cat($_tmp, "&nbsp;<a href='index.php?module=Accounts&action=DetailView&record="))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->account_id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->account_id))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "'>") : smarty_modifier_cat($_tmp, "'>"))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->account_name) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->account_name))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</a>") : smarty_modifier_cat($_tmp, "</a>"))); ?>
<?php endif; ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</td><td>") : smarty_modifier_cat($_tmp, "</td><td>"))); ?>
<?php if (isset ( $this->_tpl_vars['bean']->opportunity_id ) && ! empty ( $this->_tpl_vars['bean']->opportunity_id )): ?>
<?php $this->assign('displayPreform', true); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_OPP']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['MOD']['LBL_CONVERTED_OPP']))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "&nbsp;<a href='index.php?module=Opportunities&action=DetailView&record=") : smarty_modifier_cat($_tmp, "&nbsp;<a href='index.php?module=Opportunities&action=DetailView&record="))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->opportunity_id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->opportunity_id))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "'>") : smarty_modifier_cat($_tmp, "'>"))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['bean']->opportunity_name) : smarty_modifier_cat($_tmp, $this->_tpl_vars['bean']->opportunity_name))); ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</a>") : smarty_modifier_cat($_tmp, "</a>"))); ?>
<?php endif; ?>
<?php $this->assign('preForm', ((is_array($_tmp=$this->_tpl_vars['preForm'])) ? $this->_run_mod_handler('cat', true, $_tmp, "</td></tr></table></td></tr></table>") : smarty_modifier_cat($_tmp, "</td></tr></table></td></tr></table>"))); ?>
<?php if ($this->_tpl_vars['displayPreform']): ?>
<?php echo $this->_tpl_vars['preForm']; ?>

<br>
<?php endif; ?>

<script language="javascript">
<?php echo '
SUGAR.util.doWhen(function(){
    return $("#contentTable").length == 0;
}, SUGAR.themes.actionMenu);
'; ?>

</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="<?php echo $this->_tpl_vars['module']; ?>
">
<input type="hidden" name="record" value="<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="<?php echo $this->_tpl_vars['offset']; ?>
">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
</form>
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" ><?php if ($this->_tpl_vars['bean']->aclAccess('edit')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
"><?php endif; ?> <ul id class="subnav" ><li><?php if ($this->_tpl_vars['bean']->aclAccess('edit')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_KEY']; ?>
" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="<?php echo $this->_tpl_vars['APP']['LBL_DUPLICATE_BUTTON_LABEL']; ?>
" id="duplicate_button"><?php endif; ?> </li><li><?php if ($this->_tpl_vars['bean']->aclAccess('delete')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_KEY']; ?>
" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('<?php echo $this->_tpl_vars['APP']['NTC_DELETE_CONFIRMATION']; ?>
')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="<?php echo $this->_tpl_vars['APP']['LBL_DELETE_BUTTON_LABEL']; ?>
" id="delete_button"><?php endif; ?> </li><li><?php if ($this->_tpl_vars['bean']->aclAccess('edit') && $this->_tpl_vars['bean']->aclAccess('delete')): ?><input title="<?php echo $this->_tpl_vars['APP']['LBL_DUP_MERGE']; ?>
" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $this->_tpl_vars['id']; ?>
'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="<?php echo $this->_tpl_vars['APP']['LBL_DUP_MERGE']; ?>
" id="merge_duplicate_button"><?php endif; ?> </li><li><?php if ($this->_tpl_vars['bean']->aclAccess('edit') && ! $this->_tpl_vars['DISABLE_CONVERT_ACTION']): ?><input title="<?php echo $this->_tpl_vars['MOD']['LBL_CONVERTLEAD_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['MOD']['LBL_CONVERTLEAD_BUTTON_KEY']; ?>
" class="button" onClick="document.location='index.php?module=Leads&action=ConvertLead&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
'" name="convert" id="convert_lead_button" type="button" value="<?php echo $this->_tpl_vars['MOD']['LBL_CONVERTLEAD']; ?>
"/><?php endif; ?></li><li><input title="<?php echo $this->_tpl_vars['APP']['LBL_MANAGE_SUBSCRIPTIONS']; ?>
" class="button" id="manage_subscriptions_button" onclick="var _form = document.getElementById('formDetailView');_form.return_module.value='Leads'; _form.return_action.value='DetailView';_form.return_id.value='<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
'; _form.action.value='Subscriptions'; _form.module.value='Campaigns'; _form.module_tab.value='Leads';_form.submit();" name="<?php echo $this->_tpl_vars['APP']['LBL_MANAGE_SUBSCRIPTIONS']; ?>
" type="button" value="<?php echo $this->_tpl_vars['APP']['LBL_MANAGE_SUBSCRIPTIONS']; ?>
"/></li><li><input type="button" class="button" onClick="showPopup();" value="<?php echo $this->_tpl_vars['APP']['LBL_GENERATE_LETTER']; ?>
"/></li><li><?php if ($this->_tpl_vars['bean']->aclAccess('detail')): ?><?php if (! empty ( $this->_tpl_vars['fields']['id']['value'] ) && $this->_tpl_vars['isAuditEnabled']): ?><input id="btn_view_change_log" title="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
&module_name=Leads", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $this->_tpl_vars['APP']['LNK_VIEW_CHANGE_LOG']; ?>
"><?php endif; ?><?php endif; ?></li></ul></li></ul>
</div>
</td>
<td align="right" width="20%"><?php echo $this->_tpl_vars['ADMIN_EDIT']; ?>

<?php echo $this->_tpl_vars['PAGINATION']; ?>

</td>
</tr>
</table><?php echo smarty_function_sugar_include(array('include' => $this->_tpl_vars['includes']), $this);?>

<div id="Leads_detailview_tabs"
class="yui-navset detailview_tabs"
>

<ul class="yui-nav">

<li><a id="tab0" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CONTACT_INFORMATION','module' => 'Leads'), $this);?>
</em></a></li>


<li><a id="tab1" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_EDITVIEW_PANEL8','module' => 'Leads'), $this);?>
</em></a></li>

<li><a id="tab2" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_EDITVIEW_PANEL5','module' => 'Leads'), $this);?>
</em></a></li>

<li><a id="tab3" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_EDITVIEW_PANEL4','module' => 'Leads'), $this);?>
</em></a></li>

<li><a id="tab4" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PANEL_ADVANCED','module' => 'Leads'), $this);?>
</em></a></li>

<li><a id="tab5" href="javascript:void(0)"><em><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PANEL_ASSIGNMENT','module' => 'Leads'), $this);?>
</em></a></li>
</ul>
<div class="yui-content">
<div id='tabcontent0'>
<div id='detailpanel_1' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_CONTACT_INFORMATION' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['first_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_FIRST_NAME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="first_name" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['first_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['first_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['first_name']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['first_name']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['last_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LAST_NAME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="last_name" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['last_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['last_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['last_name']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['last_name']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['patronymic']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PATRONIMYC','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="patronymic" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['patronymic']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['patronymic']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['patronymic']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['patronymic']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['patronymic']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['patronymic']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['resident']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_RESIDENT','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="bool" field="resident" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['resident']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strval ( $this->_tpl_vars['fields']['resident']['value'] ) == '1' || strval ( $this->_tpl_vars['fields']['resident']['value'] ) == 'yes' || strval ( $this->_tpl_vars['fields']['resident']['value'] ) == 'on'): ?> 
<?php $this->assign('checked', 'checked="checked"'); ?>
<?php else: ?>
<?php $this->assign('checked', ""); ?>
<?php endif; ?>
<input type="checkbox" class="checkbox" name="<?php echo $this->_tpl_vars['fields']['resident']['name']; ?>
" id="<?php echo $this->_tpl_vars['fields']['resident']['name']; ?>
" value="$fields.resident.value" disabled="true" <?php echo $this->_tpl_vars['checked']; ?>
>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['lead_status']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LEAD_STATUS','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="enum" field="lead_status" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['lead_status']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['lead_status']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_status']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_status']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_status']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_status']['options'][$this->_tpl_vars['fields']['lead_status']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['lead_sex']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LEAD_SEX','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="lead_sex" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['lead_sex']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['lead_sex']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_sex']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_sex']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_sex']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_sex']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_sex']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_sex']['options'][$this->_tpl_vars['fields']['lead_sex']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['education']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_EDUCATION','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="education" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['education']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['education']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['education']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['education']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['education']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['education']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['education']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['education']['options'][$this->_tpl_vars['fields']['education']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['status']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATUS','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="enum" field="status" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['status']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['status']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['status']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['status']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['status']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['status']['options'][$this->_tpl_vars['fields']['status']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['date_birthday']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DATE_BIRTHDAY','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="date" field="date_birthday" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['date_birthday']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (strlen ( $this->_tpl_vars['fields']['date_birthday']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['date_birthday']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['date_birthday']['value']); ?>
<?php endif; ?>
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['date_birthday']['name']; ?>
"><?php echo $this->_tpl_vars['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['soc_status']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_SOC_STATUS','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="multienum" field="soc_status" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['soc_status']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['soc_status']['value'] ) && ( $this->_tpl_vars['fields']['soc_status']['value'] != '^^' )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['soc_status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['soc_status']['value']; ?>
">
<?php echo smarty_function_multienum_to_array(array('string' => $this->_tpl_vars['fields']['soc_status']['value'],'assign' => 'vals'), $this);?>

<?php $_from = $this->_tpl_vars['vals']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
<li style="margin-left:10px;"><?php echo $this->_tpl_vars['fields']['soc_status']['options'][$this->_tpl_vars['item']]; ?>
</li>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['website']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_WEBSITE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="url" field="website" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['website']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php ob_start(); ?><?php echo $this->_tpl_vars['fields']['website']['value']; ?>
<?php $this->_smarty_vars['capture']['getLink'] = ob_get_contents();  $this->assign('link', ob_get_contents());ob_end_clean(); ?>
<?php if (! empty ( $this->_tpl_vars['link'] )): ?>
<?php ob_start(); ?><?php echo ((is_array($_tmp=$this->_tpl_vars['link'])) ? $this->_run_mod_handler('substr', true, $_tmp, 0, 7) : substr($_tmp, 0, 7)); ?>
<?php $this->_smarty_vars['capture']['getStart'] = ob_get_contents();  $this->assign('linkStart', ob_get_contents());ob_end_clean(); ?>
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['website']['name']; ?>
">
<a href='<?php echo ((is_array($_tmp=$this->_tpl_vars['link'])) ? $this->_run_mod_handler('to_url', true, $_tmp) : smarty_modifier_to_url($_tmp)); ?>
' target='_blank' ><?php echo $this->_tpl_vars['link']; ?>
</a>
</span>
<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['age']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_AGE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="int" field="age" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['age']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['age']['name']; ?>
">
<?php echo smarty_function_sugar_number_format(array('precision' => 0,'var' => $this->_tpl_vars['fields']['age']['value']), $this);?>

</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['debet_type']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DEBETTYPE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="debet_type" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['debet_type']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['debet_type']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['debet_type']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['debet_type']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['debet_type']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['debet_type']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['debet_type']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['debet_type']['options'][$this->_tpl_vars['fields']['debet_type']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['level_volume']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LEVELVOLUME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="level_volume" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['level_volume']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['level_volume']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['level_volume']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['level_volume']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['level_volume']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['level_volume']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['level_volume']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['level_volume']['options'][$this->_tpl_vars['fields']['level_volume']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['description']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DESCRIPTION','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="description" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['description']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['description']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['description']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['bh_card_ident_leads_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_BH_CARD_IDENT_LEADS_FROM_BH_CARD_IDENT_TITLE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="relate" field="bh_card_ident_leads_name" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['bh_card_ident_leads_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['bh_card_ident_leadsbh_card_ident_ida']['value'] )): ?>
<?php ob_start(); ?>index.php?module=bh_Card_ident&action=DetailView&record=<?php echo $this->_tpl_vars['fields']['bh_card_ident_leadsbh_card_ident_ida']['value']; ?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('detail_url', ob_get_contents());ob_end_clean(); ?>
<a href="<?php echo smarty_function_sugar_ajax_url(array('url' => $this->_tpl_vars['detail_url']), $this);?>
"><?php endif; ?>
<span id="bh_card_ident_leadsbh_card_ident_ida" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['bh_card_ident_leadsbh_card_ident_ida']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['bh_card_ident_leads_name']['value']; ?>
</span>
<?php if (! empty ( $this->_tpl_vars['fields']['bh_card_ident_leadsbh_card_ident_ida']['value'] )): ?></a><?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['correspondence_method']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CORRESPONDENCE_METHOD','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="correspondence_method" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['correspondence_method']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['correspondence_method']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['correspondence_method']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_CONTACT_INFORMATION").style.display='none';</script>
<?php endif; ?>
<div id='detailpanel_2' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(2);">
<img border="0" id="detailpanel_2_img_hide" src="<?php echo smarty_function_sugar_getimagepath(array('file' => "basic_search.gif"), $this);?>
"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(2);">
<img border="0" id="detailpanel_2_img_show" src="<?php echo smarty_function_sugar_getimagepath(array('file' => "advanced_search.gif"), $this);?>
"></a>
<?php echo smarty_function_sugar_translate(array('label' => 'LBL_EDITVIEW_PANEL1','module' => 'Leads'), $this);?>

<script>
      document.getElementById('detailpanel_2').className += ' expanded';
    </script>
</h4>
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL1' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['phone_mobile']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_MOBILE_PHONE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="phone" field="phone_mobile" width='37.5%'  class="phone">
<?php if (! $this->_tpl_vars['fields']['phone_mobile']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['phone_mobile']['value'] )): ?>
<?php $this->assign('phone_value', $this->_tpl_vars['fields']['phone_mobile']['value']); ?>
<?php echo smarty_function_sugar_phone(array('value' => $this->_tpl_vars['phone_value'],'usa_format' => '0'), $this);?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['phone_work']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_OFFICE_PHONE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="phone" field="phone_work" width='37.5%'  class="phone">
<?php if (! $this->_tpl_vars['fields']['phone_work']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['phone_work']['value'] )): ?>
<?php $this->assign('phone_value', $this->_tpl_vars['fields']['phone_work']['value']); ?>
<?php echo smarty_function_sugar_phone(array('value' => $this->_tpl_vars['phone_value'],'usa_format' => '0'), $this);?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['phone_addr_fact']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PHONE_ADDRFACT','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="phone" field="phone_addr_fact" width='37.5%'  class="phone">
<?php if (! $this->_tpl_vars['fields']['phone_addr_fact']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['phone_addr_fact']['value'] )): ?>
<?php $this->assign('phone_value', $this->_tpl_vars['fields']['phone_addr_fact']['value']); ?>
<?php echo smarty_function_sugar_phone(array('value' => $this->_tpl_vars['phone_value'],'usa_format' => '0'), $this);?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['phone_addr_registr']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PHONE_ADDR_REGISTR','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="phone" field="phone_addr_registr" width='37.5%'  class="phone">
<?php if (! $this->_tpl_vars['fields']['phone_addr_registr']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['phone_addr_registr']['value'] )): ?>
<?php $this->assign('phone_value', $this->_tpl_vars['fields']['phone_addr_registr']['value']); ?>
<?php echo smarty_function_sugar_phone(array('value' => $this->_tpl_vars['phone_value'],'usa_format' => '0'), $this);?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['contact_person_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CONTACT_PERSON_NAME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="contact_person_name" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['contact_person_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['contact_person_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['contact_person_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['contact_person_name']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['contact_person_name']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['contact_person_name']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['phone_contact_face']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PHONE_CONTACTFACE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="phone" field="phone_contact_face" width='37.5%' colspan='3' class="phone">
<?php if (! $this->_tpl_vars['fields']['phone_contact_face']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['phone_contact_face']['value'] )): ?>
<?php $this->assign('phone_value', $this->_tpl_vars['fields']['phone_contact_face']['value']); ?>
<?php echo smarty_function_sugar_phone(array('value' => $this->_tpl_vars['phone_value'],'usa_format' => '0'), $this);?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['email1']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_EMAIL_ADDRESS','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="email1" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['email1']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>

<span id='email1_span'>
<?php echo $this->_tpl_vars['fields']['email1']['value']; ?>

</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['communicator']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_COMMUNICATOR','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="multitextfield" field="communicator" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['communicator']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>

<?php 
global $current_language; $app_list_strings = return_app_list_strings_language($current_language);
$this->assign('APP_LIST', $app_list_strings['phone_type_dom']);
 ?>
<?php $this->assign('texts', ((is_array($_tmp="^|^")) ? $this->_run_mod_handler('explode', true, $_tmp, $this->_tpl_vars['fields']['communicator']['value']) : explode($_tmp, $this->_tpl_vars['fields']['communicator']['value']))); ?>
<?php $_from = $this->_tpl_vars['texts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['outer'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['outer']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['text']):
        $this->_foreach['outer']['iteration']++;
?>
<?php $this->assign('item', ((is_array($_tmp="^,^")) ? $this->_run_mod_handler('explode', true, $_tmp, $this->_tpl_vars['text']) : explode($_tmp, $this->_tpl_vars['text']))); ?>
<?php if ($this->_tpl_vars['item']['2'] == '1'): ?>
<span><?php echo $this->_tpl_vars['item']['0']; ?>
</span>
<?php else: ?>
<b><?php echo $this->_tpl_vars['item']['0']; ?>
</b>
<?php endif; ?>
<?php if ($this->_tpl_vars['item']['1'] == '1'): ?>&nbsp;<i style="color:blue;">(<?php echo $this->_tpl_vars['APP']['LBL_PHONE_MAIN']; ?>
)</i><?php endif; ?>
<?php if ($this->_tpl_vars['item']['2'] == '1'): ?>&nbsp;<i class="error">(<?php echo $this->_tpl_vars['APP']['LBL_PHONE_DONT_CALL']; ?>
)</i><?php endif; ?>
&nbsp;(<i><?php $this->assign('it', $this->_tpl_vars['item']['3']); ?><?php echo $this->_tpl_vars['APP_LIST'][$this->_tpl_vars['it']]; ?>
</i>)
<br>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() { initPanel(2, 'expanded'); }); </script>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_EDITVIEW_PANEL1").style.display='none';</script>
<?php endif; ?>
</div>    <div id='tabcontent1'>
<div id='detailpanel_3' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL8' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['org_earn_level']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ORGEARNLEVEL','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="org_earn_level" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['org_earn_level']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['org_earn_level']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['org_earn_level']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['org_earn_level']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['org_earn_level']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['org_earn_level']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['org_earn_level']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['org_earn_level']['options'][$this->_tpl_vars['fields']['org_earn_level']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['debet_type_level']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_DEBETTYPELEVEL','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="debet_type_level" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['debet_type_level']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['debet_type_level']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['debet_type_level']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['debet_type_level']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['debet_type_level']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['debet_type_level']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['debet_type_level']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['debet_type_level']['options'][$this->_tpl_vars['fields']['debet_type_level']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['credit_rating']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CREDRATING','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="decimal" field="credit_rating" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['credit_rating']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['credit_rating']['name']; ?>
">
<?php echo smarty_function_sugar_number_format(array('var' => $this->_tpl_vars['fields']['credit_rating']['value'],'precision' => 3), $this);?>

</span>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['overdraft']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_OVERDRAFT','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="decimal" field="overdraft" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['overdraft']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['overdraft']['name']; ?>
">
<?php echo smarty_function_sugar_number_format(array('var' => $this->_tpl_vars['fields']['overdraft']['value'],'precision' => 3), $this);?>

</span>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['account_num']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCOUNTNUM','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="account_num" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['account_num']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['account_num']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['account_num']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['account_num']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['account_num']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['account_num']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['card_num']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CARDNUM','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="card_num" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['card_num']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['card_num']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['card_num']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['card_num']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['card_num']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['card_num']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['bank_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_BANKNAME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="bank_name" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['bank_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['bank_name']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['bank_name']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['bank_emitent_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_BANKEMITENTNAME','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="bank_emitent_name" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['bank_emitent_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['bank_emitent_name']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['bank_emitent_name']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['bank_mfo']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_BANKMFO','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="bank_mfo" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['bank_mfo']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['bank_mfo']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['bank_mfo']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['bank_mfo']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['bank_mfo']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['bank_mfo']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['bank_emitent_mfo']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_BANKEMITENTMFO','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="bank_emitent_mfo" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['bank_emitent_mfo']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['bank_emitent_mfo']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['bank_emitent_mfo']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['bank_emitent_mfo']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['bank_emitent_mfo']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['bank_emitent_mfo']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['inn']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_INN','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="inn" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['inn']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['inn']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['inn']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['inn']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['inn']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['inn']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_EDITVIEW_PANEL8").style.display='none';</script>
<?php endif; ?>
</div>    <div id='tabcontent2'>
<div id='detailpanel_4' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL5' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['family_status']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_FAMILYSTATUS','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="family_status" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['family_status']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['family_status']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['family_status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['family_status']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['family_status']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['family_status']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['family_status']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['family_status']['options'][$this->_tpl_vars['fields']['family_status']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['child_count']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CHILDCOUNT','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="int" field="child_count" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['child_count']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['child_count']['name']; ?>
">
<?php $this->assign('value', $this->_tpl_vars['fields']['child_count']['value']); ?>
<?php echo $this->_tpl_vars['value']; ?>

</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['first_name2']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_FIRSTNAME2','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="first_name2" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['first_name2']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['first_name2']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name2']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name2']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['first_name2']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['first_name2']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['last_name2']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LASTNAME2','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="last_name2" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['last_name2']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['last_name2']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name2']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['last_name2']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['last_name2']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['last_name2']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_EDITVIEW_PANEL5").style.display='none';</script>
<?php endif; ?>
</div>    <div id='tabcontent3'>
<div id='detailpanel_5' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL4' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['problem_law']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PROBLEMLAW','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="multienum" field="problem_law" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['problem_law']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['problem_law']['value'] ) && ( $this->_tpl_vars['fields']['problem_law']['value'] != '^^' )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['problem_law']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['problem_law']['value']; ?>
">
<?php echo smarty_function_multienum_to_array(array('string' => $this->_tpl_vars['fields']['problem_law']['value'],'assign' => 'vals'), $this);?>

<?php $_from = $this->_tpl_vars['vals']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
<li style="margin-left:10px;"><?php echo $this->_tpl_vars['fields']['problem_law']['options'][$this->_tpl_vars['item']]; ?>
</li>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
<?php endif; ?>
</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['judded_by_article']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_JUDDED_BY','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="judded_by_article" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['judded_by_article']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['judded_by_article']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['judded_by_article']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['judded_by_article']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['judded_by_article']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['judded_by_article']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_EDITVIEW_PANEL4").style.display='none';</script>
<?php endif; ?>
</div>    <div id='tabcontent4'>
<div id='detailpanel_6' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_PANEL_ADVANCED' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['opportunity_amount']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_OPPORTUNITY_AMOUNT','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="opportunity_amount" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['opportunity_amount']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['opportunity_amount']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['opportunity_amount']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['opportunity_amount']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['opportunity_amount']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['opportunity_amount']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['lead_source']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LEAD_SOURCE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="enum" field="lead_source" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['lead_source']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['lead_source']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_source']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_source']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_source']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['lead_source']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['lead_source']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['lead_source']['options'][$this->_tpl_vars['fields']['lead_source']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['status_description']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_STATUS_DESCRIPTION','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="status_description" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['status_description']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['status_description']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['status_description']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['lead_source_description']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_LEAD_SOURCE_DESCRIPTION','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="lead_source_description" width='37.5%'  >
<?php if (! $this->_tpl_vars['fields']['lead_source_description']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['lead_source_description']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['lead_source_description']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['org_sphere']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ORGSPHERE','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="" type="enum" field="org_sphere" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['org_sphere']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>



<?php if (is_string ( $this->_tpl_vars['fields']['org_sphere']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['org_sphere']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['org_sphere']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['org_sphere']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['org_sphere']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['org_sphere']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['org_sphere']['options'][$this->_tpl_vars['fields']['org_sphere']['value']]; ?>

<?php endif; ?>
<?php endif; ?>
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['campaign_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_CAMPAIGN','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="relate" field="campaign_name" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['campaign_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (! empty ( $this->_tpl_vars['fields']['campaign_id']['value'] )): ?>
<?php ob_start(); ?>index.php?module=Campaigns&action=DetailView&record=<?php echo $this->_tpl_vars['fields']['campaign_id']['value']; ?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('detail_url', ob_get_contents());ob_end_clean(); ?>
<a href="<?php echo smarty_function_sugar_ajax_url(array('url' => $this->_tpl_vars['detail_url']), $this);?>
"><?php endif; ?>
<span id="campaign_id" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['campaign_id']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['campaign_name']['value']; ?>
</span>
<?php if (! empty ( $this->_tpl_vars['fields']['campaign_id']['value'] )): ?></a><?php endif; ?>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['photo']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_PHOTO','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="image" field="photo" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['photo']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['photo']['name']; ?>
">
<img src="index.php?entryPoint=download&id=<?php echo $this->_tpl_vars['fields']['id']['value']; ?>
_<?php echo $this->_tpl_vars['fields']['photo']['name']; ?>
<?php echo $this->_tpl_vars['fields']['width']['value']; ?>
&type=<?php echo $this->_tpl_vars['module']; ?>
" style="max-width: <?php if (! $this->_tpl_vars['vardef']['width']): ?>120<?php else: ?>200<?php endif; ?>px;" height="<?php if (! $this->_tpl_vars['vardef']['height']): ?>240<?php else: ?>50<?php endif; ?>">
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_PANEL_ADVANCED").style.display='none';</script>
<?php endif; ?>
</div>    <div id='tabcontent5'>
<div id='detailpanel_7' class='detail view  detail508 expanded'>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount','start' => 0,'print' => false,'assign' => 'panelFieldCount'), $this);?>

<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_PANEL_ASSIGNMENT' class="panelContainer" cellspacing='<?php echo $this->_tpl_vars['gridline']; ?>
'>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['assigned_user_name']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_ASSIGNED_TO','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="relate" field="assigned_user_name" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['assigned_user_name']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span id="assigned_user_id" class="sugar_field" data-id-value="<?php echo $this->_tpl_vars['fields']['assigned_user_id']['value']; ?>
"><?php echo $this->_tpl_vars['fields']['assigned_user_name']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['message_to_assigned']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_MESTOASIGNED','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="text" field="message_to_assigned" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['message_to_assigned']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<span class="sugar_field" id="<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['message_to_assigned']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['fields']['message_to_assigned']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html_entity_decode') : smarty_modifier_escape($_tmp, 'html_entity_decode')))) ? $this->_run_mod_handler('url2html', true, $_tmp) : url2html($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed','start' => 0,'print' => false,'assign' => 'fieldsUsed'), $this);?>

<?php echo smarty_function_counter(array('name' => 'fieldsHidden','start' => 0,'print' => false,'assign' => 'fieldsHidden'), $this);?>

<?php ob_start(); ?>
<tr>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
<?php if (! $this->_tpl_vars['fields']['refered_by']['hidden']): ?>
<?php ob_start(); ?><?php echo smarty_function_sugar_translate(array('label' => 'LBL_REFERED_BY','module' => 'Leads'), $this);?>
<?php $this->_smarty_vars['capture']['label'] = ob_get_contents();  $this->assign('label', ob_get_contents());ob_end_clean(); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['label'])) ? $this->_run_mod_handler('strip_semicolon', true, $_tmp) : smarty_modifier_strip_semicolon($_tmp)); ?>
:
<?php endif; ?>
</td>
<td class="inlineEdit" type="varchar" field="refered_by" width='37.5%' colspan='3' >
<?php if (! $this->_tpl_vars['fields']['refered_by']['hidden']): ?>
<?php echo smarty_function_counter(array('name' => 'panelFieldCount'), $this);?>


<?php if (strlen ( $this->_tpl_vars['fields']['refered_by']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['refered_by']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['refered_by']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['refered_by']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['refered_by']['value']; ?>
</span>
<?php endif; ?>
<div class="inlineEditIcon"> <?php echo smarty_function_sugar_getimage(array('name' => "inline_edit_icon.svg",'attr' => 'border="0" ','alt' => ($this->_tpl_vars['alt_edit'])), $this);?>
</div>			</td>
<?php echo smarty_function_counter(array('name' => 'fieldsUsed'), $this);?>

<td width='12.5%' scope="col">
&nbsp;
</td>
<td class="" type="" field="" width='37.5%'  >
</td>
</tr>
<?php $this->_smarty_vars['capture']['tr'] = ob_get_contents();  $this->assign('tableRow', ob_get_contents());ob_end_clean(); ?>
<?php if ($this->_tpl_vars['fieldsUsed'] > 0 && $this->_tpl_vars['fieldsUsed'] != $this->_tpl_vars['fieldsHidden']): ?>
<?php echo $this->_tpl_vars['tableRow']; ?>

<?php endif; ?>
</table>
</div>
<?php if ($this->_tpl_vars['panelFieldCount'] == 0): ?>
<script>document.getElementById("LBL_PANEL_ASSIGNMENT").style.display='none';</script>
<?php endif; ?>
</div>
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){SUGAR.util.buildAccessKeyLabels();});
</script><script type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file' => 'include/javascript/popup_helper.js'), $this);?>
'></script>
<script type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file' => 'cache/include/javascript/sugar_grp_yui_widgets.js'), $this);?>
"></script>
<script type="text/javascript">
var Leads_detailview_tabs = new YAHOO.widget.TabView("Leads_detailview_tabs");
Leads_detailview_tabs.selectTab(0);
</script>
<script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>