

{assign var=preForm value="<table width='100%' border='1' cellspacing='0' cellpadding='0' class='converted_account'><tr><td><table width='100%'><tr><td>"}
{assign var=displayPreform value=false}
{if isset($bean->contact_id) && !empty($bean->contact_id)}
{assign var=displayPreform value=true}
{assign var=preForm value=$preForm|cat:$MOD.LBL_CONVERTED_CONTACT}
{assign var=preForm value=$preForm|cat:"&nbsp;<a href='index.php?module=Contacts&action=DetailView&record="}
{assign var=preForm value=$preForm|cat:$bean->contact_id}
{assign var=preForm value=$preForm|cat:"'>"}
{assign var=preForm value=$preForm|cat:$bean->contact_name}
{assign var=preForm value=$preForm|cat:"</a>"}
{/if}
{assign var=preForm value=$preForm|cat:"</td><td>"}
{if isset($bean->account_id) && !empty($bean->account_id)}
{assign var=displayPreform value=true}
{assign var=preForm value=$preForm|cat:$MOD.LBL_CONVERTED_ACCOUNT}
{assign var=preForm value=$preForm|cat:"&nbsp;<a href='index.php?module=Accounts&action=DetailView&record="}
{assign var=preForm value=$preForm|cat:$bean->account_id}
{assign var=preForm value=$preForm|cat:"'>"}
{assign var=preForm value=$preForm|cat:$bean->account_name}
{assign var=preForm value=$preForm|cat:"</a>"}
{/if}
{assign var=preForm value=$preForm|cat:"</td><td>"}
{if isset($bean->opportunity_id) && !empty($bean->opportunity_id)}
{assign var=displayPreform value=true}
{assign var=preForm value=$preForm|cat:$MOD.LBL_CONVERTED_OPP}
{assign var=preForm value=$preForm|cat:"&nbsp;<a href='index.php?module=Opportunities&action=DetailView&record="}
{assign var=preForm value=$preForm|cat:$bean->opportunity_id}
{assign var=preForm value=$preForm|cat:"'>"}
{assign var=preForm value=$preForm|cat:$bean->opportunity_name}
{assign var=preForm value=$preForm|cat:"</a>"}
{/if}
{assign var=preForm value=$preForm|cat:"</td></tr></table></td></tr></table>"}
{if $displayPreform}
{$preForm}
<br>
{/if}

<script language="javascript">
{literal}
SUGAR.util.doWhen(function(){
    return $("#contentTable").length == 0;
}, SUGAR.themes.actionMenu);
{/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
</form>
<ul id="detail_header_action_menu" class="clickMenu fancymenu" ><li class="sugar_action_button" >{if $bean->aclAccess("edit")}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if} <ul id class="subnav" ><li>{if $bean->aclAccess("edit")}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if} </li><li>{if $bean->aclAccess("delete")}<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='ListView'; _form.action.value='Delete'; if(confirm('{$APP.NTC_DELETE_CONFIRMATION}')) SUGAR.ajaxUI.submitForm(_form); return false;" type="submit" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if} </li><li>{if $bean->aclAccess("edit") && $bean->aclAccess("delete")}<input title="{$APP.LBL_DUP_MERGE}" class="button" onclick="var _form = document.getElementById('formDetailView'); _form.return_module.value='Leads'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='Step1'; _form.module.value='MergeRecords';SUGAR.ajaxUI.submitForm(_form);" type="button" name="Merge" value="{$APP.LBL_DUP_MERGE}" id="merge_duplicate_button">{/if} </li><li>{if $bean->aclAccess("edit") && !$DISABLE_CONVERT_ACTION}<input title="{$MOD.LBL_CONVERTLEAD_TITLE}" accessKey="{$MOD.LBL_CONVERTLEAD_BUTTON_KEY}" class="button" onClick="document.location='index.php?module=Leads&action=ConvertLead&record={$fields.id.value}'" name="convert" id="convert_lead_button" type="button" value="{$MOD.LBL_CONVERTLEAD}"/>{/if}</li><li><input title="{$APP.LBL_MANAGE_SUBSCRIPTIONS}" class="button" id="manage_subscriptions_button" onclick="var _form = document.getElementById('formDetailView');_form.return_module.value='Leads'; _form.return_action.value='DetailView';_form.return_id.value='{$fields.id.value}'; _form.action.value='Subscriptions'; _form.module.value='Campaigns'; _form.module_tab.value='Leads';_form.submit();" name="{$APP.LBL_MANAGE_SUBSCRIPTIONS}" type="button" value="{$APP.LBL_MANAGE_SUBSCRIPTIONS}"/></li><li><input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_GENERATE_LETTER}"/></li><li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Leads", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li></ul></li></ul>
</div>
</td>
<td align="right" width="20%">{$ADMIN_EDIT}
{$PAGINATION}
</td>
</tr>
</table>{sugar_include include=$includes}
<div id="Leads_detailview_tabs"
class="yui-navset detailview_tabs"
>

<ul class="yui-nav">

<li><a id="tab0" href="javascript:void(0)"><em>{sugar_translate label='LBL_CONTACT_INFORMATION' module='Leads'}</em></a></li>


<li><a id="tab1" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL8' module='Leads'}</em></a></li>

<li><a id="tab2" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL5' module='Leads'}</em></a></li>

<li><a id="tab3" href="javascript:void(0)"><em>{sugar_translate label='LBL_EDITVIEW_PANEL4' module='Leads'}</em></a></li>

<li><a id="tab4" href="javascript:void(0)"><em>{sugar_translate label='LBL_PANEL_ADVANCED' module='Leads'}</em></a></li>

<li><a id="tab5" href="javascript:void(0)"><em>{sugar_translate label='LBL_PANEL_ASSIGNMENT' module='Leads'}</em></a></li>
</ul>
<div class="yui-content">
<div id='tabcontent0'>
<div id='detailpanel_1' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_CONTACT_INFORMATION' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.first_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FIRST_NAME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="first_name" width='37.5%'  >
{if !$fields.first_name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.first_name.value) <= 0}
{assign var="value" value=$fields.first_name.default_value }
{else}
{assign var="value" value=$fields.first_name.value }
{/if} 
<span class="sugar_field" id="{$fields.first_name.name}">{$fields.first_name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.last_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LAST_NAME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="last_name" width='37.5%'  >
{if !$fields.last_name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.last_name.value) <= 0}
{assign var="value" value=$fields.last_name.default_value }
{else}
{assign var="value" value=$fields.last_name.value }
{/if} 
<span class="sugar_field" id="{$fields.last_name.name}">{$fields.last_name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.patronymic.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PATRONIMYC' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="patronymic" width='37.5%' colspan='3' >
{if !$fields.patronymic.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.patronymic.value) <= 0}
{assign var="value" value=$fields.patronymic.default_value }
{else}
{assign var="value" value=$fields.patronymic.value }
{/if} 
<span class="sugar_field" id="{$fields.patronymic.name}">{$fields.patronymic.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.resident.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_RESIDENT' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="bool" field="resident" width='37.5%' colspan='3' >
{if !$fields.resident.hidden}
{counter name="panelFieldCount"}

{if strval($fields.resident.value) == "1" || strval($fields.resident.value) == "yes" || strval($fields.resident.value) == "on"} 
{assign var="checked" value='checked="checked"'}
{else}
{assign var="checked" value=""}
{/if}
<input type="checkbox" class="checkbox" name="{$fields.resident.name}" id="{$fields.resident.name}" value="$fields.resident.value" disabled="true" {$checked}>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.lead_status.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEAD_STATUS' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="lead_status" width='37.5%'  >
{if !$fields.lead_status.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.lead_status.options)}
<input type="hidden" class="sugar_field" id="{$fields.lead_status.name}" value="{ $fields.lead_status.options }">
{ $fields.lead_status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.lead_status.name}" value="{ $fields.lead_status.value }">
{ $fields.lead_status.options[$fields.lead_status.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.lead_sex.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEAD_SEX' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="lead_sex" width='37.5%'  >
{if !$fields.lead_sex.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.lead_sex.options)}
<input type="hidden" class="sugar_field" id="{$fields.lead_sex.name}" value="{ $fields.lead_sex.options }">
{ $fields.lead_sex.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.lead_sex.name}" value="{ $fields.lead_sex.value }">
{ $fields.lead_sex.options[$fields.lead_sex.value]}
{/if}
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.education.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_EDUCATION' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="education" width='37.5%'  >
{if !$fields.education.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.education.options)}
<input type="hidden" class="sugar_field" id="{$fields.education.name}" value="{ $fields.education.options }">
{ $fields.education.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.education.name}" value="{ $fields.education.value }">
{ $fields.education.options[$fields.education.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.status.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="status" width='37.5%'  >
{if !$fields.status.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.date_birthday.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_BIRTHDAY' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="date" field="date_birthday" width='37.5%'  >
{if !$fields.date_birthday.hidden}
{counter name="panelFieldCount"}


{if strlen($fields.date_birthday.value) <= 0}
{assign var="value" value=$fields.date_birthday.default_value }
{else}
{assign var="value" value=$fields.date_birthday.value }
{/if}
<span class="sugar_field" id="{$fields.date_birthday.name}">{$value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.soc_status.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_SOC_STATUS' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="multienum" field="soc_status" width='37.5%'  >
{if !$fields.soc_status.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.soc_status.value) && ($fields.soc_status.value != '^^')}
<input type="hidden" class="sugar_field" id="{$fields.soc_status.name}" value="{$fields.soc_status.value}">
{multienum_to_array string=$fields.soc_status.value assign="vals"}
{foreach from=$vals item=item}
<li style="margin-left:10px;">{ $fields.soc_status.options.$item }</li>
{/foreach}
{/if}
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.website.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_WEBSITE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="url" field="website" width='37.5%'  >
{if !$fields.website.hidden}
{counter name="panelFieldCount"}

{capture name=getLink assign=link}{$fields.website.value}{/capture}
{if !empty($link)}
{capture name=getStart assign=linkStart}{$link|substr:0:7}{/capture}
<span class="sugar_field" id="{$fields.website.name}">
<a href='{$link|to_url}' target='_blank' >{$link}</a>
</span>
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.age.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_AGE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="int" field="age" width='37.5%'  >
{if !$fields.age.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.age.name}">
{sugar_number_format precision=0 var=$fields.age.value}
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.debet_type.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DEBETTYPE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="debet_type" width='37.5%'  >
{if !$fields.debet_type.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.debet_type.options)}
<input type="hidden" class="sugar_field" id="{$fields.debet_type.name}" value="{ $fields.debet_type.options }">
{ $fields.debet_type.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.debet_type.name}" value="{ $fields.debet_type.value }">
{ $fields.debet_type.options[$fields.debet_type.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.level_volume.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEVELVOLUME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="level_volume" width='37.5%'  >
{if !$fields.level_volume.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.level_volume.options)}
<input type="hidden" class="sugar_field" id="{$fields.level_volume.name}" value="{ $fields.level_volume.options }">
{ $fields.level_volume.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.level_volume.name}" value="{ $fields.level_volume.value }">
{ $fields.level_volume.options[$fields.level_volume.value]}
{/if}
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="description" width='37.5%'  >
{if !$fields.description.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.bh_card_ident_leads_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BH_CARD_IDENT_LEADS_FROM_BH_CARD_IDENT_TITLE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="relate" field="bh_card_ident_leads_name" width='37.5%'  >
{if !$fields.bh_card_ident_leads_name.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.bh_card_ident_leadsbh_card_ident_ida.value)}
{capture assign="detail_url"}index.php?module=bh_Card_ident&action=DetailView&record={$fields.bh_card_ident_leadsbh_card_ident_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="bh_card_ident_leadsbh_card_ident_ida" class="sugar_field" data-id-value="{$fields.bh_card_ident_leadsbh_card_ident_ida.value}">{$fields.bh_card_ident_leads_name.value}</span>
{if !empty($fields.bh_card_ident_leadsbh_card_ident_ida.value)}</a>{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.correspondence_method.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CORRESPONDENCE_METHOD' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="correspondence_method" width='37.5%' colspan='3' >
{if !$fields.correspondence_method.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.correspondence_method.name|escape:'html'|url2html|nl2br}">{$fields.correspondence_method.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_CONTACT_INFORMATION").style.display='none';</script>
{/if}
<div id='detailpanel_2' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<h4>
<a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel(2);">
<img border="0" id="detailpanel_2_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
<a href="javascript:void(0)" class="expandLink" onclick="expandPanel(2);">
<img border="0" id="detailpanel_2_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
{sugar_translate label='LBL_EDITVIEW_PANEL1' module='Leads'}
<script>
      document.getElementById('detailpanel_2').className += ' expanded';
    </script>
</h4>
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL1' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.phone_mobile.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_MOBILE_PHONE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="phone_mobile" width='37.5%'  class="phone">
{if !$fields.phone_mobile.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.phone_mobile.value)}
{assign var="phone_value" value=$fields.phone_mobile.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.phone_work.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_OFFICE_PHONE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="phone_work" width='37.5%'  class="phone">
{if !$fields.phone_work.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.phone_work.value)}
{assign var="phone_value" value=$fields.phone_work.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.phone_addr_fact.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PHONE_ADDRFACT' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="phone_addr_fact" width='37.5%'  class="phone">
{if !$fields.phone_addr_fact.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.phone_addr_fact.value)}
{assign var="phone_value" value=$fields.phone_addr_fact.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.phone_addr_registr.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PHONE_ADDR_REGISTR' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="phone_addr_registr" width='37.5%'  class="phone">
{if !$fields.phone_addr_registr.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.phone_addr_registr.value)}
{assign var="phone_value" value=$fields.phone_addr_registr.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.contact_person_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CONTACT_PERSON_NAME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="contact_person_name" width='37.5%' colspan='3' >
{if !$fields.contact_person_name.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.contact_person_name.value) <= 0}
{assign var="value" value=$fields.contact_person_name.default_value }
{else}
{assign var="value" value=$fields.contact_person_name.value }
{/if} 
<span class="sugar_field" id="{$fields.contact_person_name.name}">{$fields.contact_person_name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.phone_contact_face.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PHONE_CONTACTFACE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="phone" field="phone_contact_face" width='37.5%' colspan='3' class="phone">
{if !$fields.phone_contact_face.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.phone_contact_face.value)}
{assign var="phone_value" value=$fields.phone_contact_face.value }
{sugar_phone value=$phone_value usa_format="0"}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.email1.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_EMAIL_ADDRESS' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="email1" width='37.5%'  >
{if !$fields.email1.hidden}
{counter name="panelFieldCount"}
<span id='email1_span'>
{$fields.email1.value}
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.communicator.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_COMMUNICATOR' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="multitextfield" field="communicator" width='37.5%'  >
{if !$fields.communicator.hidden}
{counter name="panelFieldCount"}
{php}
global $current_language; $app_list_strings = return_app_list_strings_language($current_language);
$this->assign('APP_LIST', $app_list_strings['phone_type_dom']);
{/php}
{assign var=texts value="^|^"|explode:$fields.communicator.value}
{foreach name=outer item=text from=$texts}
{assign var=item value="^,^"|explode:$text}
{if $item.2 == '1'}
<span>{$item.0}</span>
{else}
<b>{$item.0}</b>
{/if}
{if $item.1 == '1'}&nbsp;<i style="color:blue;">({$APP.LBL_PHONE_MAIN})</i>{/if}
{if $item.2 == '1'}&nbsp;<i class="error">({$APP.LBL_PHONE_DONT_CALL})</i>{/if}
&nbsp;(<i>{assign var=it value=$item.3}{$APP_LIST.$it}</i>)
<br>
{/foreach}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel(2, 'expanded'); {rdelim}); </script>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL1").style.display='none';</script>
{/if}
</div>    <div id='tabcontent1'>
<div id='detailpanel_3' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL8' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.org_earn_level.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGEARNLEVEL' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="org_earn_level" width='37.5%'  >
{if !$fields.org_earn_level.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.org_earn_level.options)}
<input type="hidden" class="sugar_field" id="{$fields.org_earn_level.name}" value="{ $fields.org_earn_level.options }">
{ $fields.org_earn_level.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.org_earn_level.name}" value="{ $fields.org_earn_level.value }">
{ $fields.org_earn_level.options[$fields.org_earn_level.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.debet_type_level.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_DEBETTYPELEVEL' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="debet_type_level" width='37.5%'  >
{if !$fields.debet_type_level.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.debet_type_level.options)}
<input type="hidden" class="sugar_field" id="{$fields.debet_type_level.name}" value="{ $fields.debet_type_level.options }">
{ $fields.debet_type_level.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.debet_type_level.name}" value="{ $fields.debet_type_level.value }">
{ $fields.debet_type_level.options[$fields.debet_type_level.value]}
{/if}
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.credit_rating.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CREDRATING' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="decimal" field="credit_rating" width='37.5%'  >
{if !$fields.credit_rating.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.credit_rating.name}">
{sugar_number_format var=$fields.credit_rating.value precision=3 }
</span>
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.overdraft.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_OVERDRAFT' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="decimal" field="overdraft" width='37.5%'  >
{if !$fields.overdraft.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.overdraft.name}">
{sugar_number_format var=$fields.overdraft.value precision=3 }
</span>
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.account_num.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ACCOUNTNUM' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="account_num" width='37.5%'  >
{if !$fields.account_num.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.account_num.value) <= 0}
{assign var="value" value=$fields.account_num.default_value }
{else}
{assign var="value" value=$fields.account_num.value }
{/if} 
<span class="sugar_field" id="{$fields.account_num.name}">{$fields.account_num.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.card_num.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CARDNUM' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="card_num" width='37.5%'  >
{if !$fields.card_num.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.card_num.value) <= 0}
{assign var="value" value=$fields.card_num.default_value }
{else}
{assign var="value" value=$fields.card_num.value }
{/if} 
<span class="sugar_field" id="{$fields.card_num.name}">{$fields.card_num.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.bank_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BANKNAME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="bank_name" width='37.5%'  >
{if !$fields.bank_name.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.bank_name.name|escape:'html'|url2html|nl2br}">{$fields.bank_name.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.bank_emitent_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BANKEMITENTNAME' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="bank_emitent_name" width='37.5%'  >
{if !$fields.bank_emitent_name.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.bank_emitent_name.name|escape:'html'|url2html|nl2br}">{$fields.bank_emitent_name.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.bank_mfo.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BANKMFO' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="bank_mfo" width='37.5%'  >
{if !$fields.bank_mfo.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.bank_mfo.value) <= 0}
{assign var="value" value=$fields.bank_mfo.default_value }
{else}
{assign var="value" value=$fields.bank_mfo.value }
{/if} 
<span class="sugar_field" id="{$fields.bank_mfo.name}">{$fields.bank_mfo.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.bank_emitent_mfo.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_BANKEMITENTMFO' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="bank_emitent_mfo" width='37.5%'  >
{if !$fields.bank_emitent_mfo.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.bank_emitent_mfo.value) <= 0}
{assign var="value" value=$fields.bank_emitent_mfo.default_value }
{else}
{assign var="value" value=$fields.bank_emitent_mfo.value }
{/if} 
<span class="sugar_field" id="{$fields.bank_emitent_mfo.name}">{$fields.bank_emitent_mfo.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.inn.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_INN' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="inn" width='37.5%' colspan='3' >
{if !$fields.inn.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.inn.value) <= 0}
{assign var="value" value=$fields.inn.default_value }
{else}
{assign var="value" value=$fields.inn.value }
{/if} 
<span class="sugar_field" id="{$fields.inn.name}">{$fields.inn.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL8").style.display='none';</script>
{/if}
</div>    <div id='tabcontent2'>
<div id='detailpanel_4' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL5' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.family_status.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FAMILYSTATUS' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="family_status" width='37.5%'  >
{if !$fields.family_status.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.family_status.options)}
<input type="hidden" class="sugar_field" id="{$fields.family_status.name}" value="{ $fields.family_status.options }">
{ $fields.family_status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.family_status.name}" value="{ $fields.family_status.value }">
{ $fields.family_status.options[$fields.family_status.value]}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.child_count.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CHILDCOUNT' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="int" field="child_count" width='37.5%'  >
{if !$fields.child_count.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.child_count.name}">
{assign var="value" value=$fields.child_count.value }
{$value}
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.first_name2.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_FIRSTNAME2' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="first_name2" width='37.5%' colspan='3' >
{if !$fields.first_name2.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.first_name2.value) <= 0}
{assign var="value" value=$fields.first_name2.default_value }
{else}
{assign var="value" value=$fields.first_name2.value }
{/if} 
<span class="sugar_field" id="{$fields.first_name2.name}">{$fields.first_name2.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.last_name2.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LASTNAME2' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="last_name2" width='37.5%' colspan='3' >
{if !$fields.last_name2.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.last_name2.value) <= 0}
{assign var="value" value=$fields.last_name2.default_value }
{else}
{assign var="value" value=$fields.last_name2.value }
{/if} 
<span class="sugar_field" id="{$fields.last_name2.name}">{$fields.last_name2.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL5").style.display='none';</script>
{/if}
</div>    <div id='tabcontent3'>
<div id='detailpanel_5' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_EDITVIEW_PANEL4' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.problem_law.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PROBLEMLAW' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="multienum" field="problem_law" width='37.5%'  >
{if !$fields.problem_law.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.problem_law.value) && ($fields.problem_law.value != '^^')}
<input type="hidden" class="sugar_field" id="{$fields.problem_law.name}" value="{$fields.problem_law.value}">
{multienum_to_array string=$fields.problem_law.value assign="vals"}
{foreach from=$vals item=item}
<li style="margin-left:10px;">{ $fields.problem_law.options.$item }</li>
{/foreach}
{/if}
{/if}
</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.judded_by_article.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_JUDDED_BY' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="judded_by_article" width='37.5%'  >
{if !$fields.judded_by_article.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.judded_by_article.value) <= 0}
{assign var="value" value=$fields.judded_by_article.default_value }
{else}
{assign var="value" value=$fields.judded_by_article.value }
{/if} 
<span class="sugar_field" id="{$fields.judded_by_article.name}">{$fields.judded_by_article.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_EDITVIEW_PANEL4").style.display='none';</script>
{/if}
</div>    <div id='tabcontent4'>
<div id='detailpanel_6' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_PANEL_ADVANCED' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.opportunity_amount.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_OPPORTUNITY_AMOUNT' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="opportunity_amount" width='37.5%'  >
{if !$fields.opportunity_amount.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.opportunity_amount.value) <= 0}
{assign var="value" value=$fields.opportunity_amount.default_value }
{else}
{assign var="value" value=$fields.opportunity_amount.value }
{/if} 
<span class="sugar_field" id="{$fields.opportunity_amount.name}">{$fields.opportunity_amount.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.lead_source.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEAD_SOURCE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="enum" field="lead_source" width='37.5%'  >
{if !$fields.lead_source.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.lead_source.options)}
<input type="hidden" class="sugar_field" id="{$fields.lead_source.name}" value="{ $fields.lead_source.options }">
{ $fields.lead_source.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.lead_source.name}" value="{ $fields.lead_source.value }">
{ $fields.lead_source.options[$fields.lead_source.value]}
{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.status_description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS_DESCRIPTION' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="status_description" width='37.5%'  >
{if !$fields.status_description.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.status_description.name|escape:'html'|url2html|nl2br}">{$fields.status_description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.lead_source_description.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEAD_SOURCE_DESCRIPTION' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="lead_source_description" width='37.5%'  >
{if !$fields.lead_source_description.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.lead_source_description.name|escape:'html'|url2html|nl2br}">{$fields.lead_source_description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.org_sphere.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ORGSPHERE' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="" type="enum" field="org_sphere" width='37.5%' colspan='3' >
{if !$fields.org_sphere.hidden}
{counter name="panelFieldCount"}


{if is_string($fields.org_sphere.options)}
<input type="hidden" class="sugar_field" id="{$fields.org_sphere.name}" value="{ $fields.org_sphere.options }">
{ $fields.org_sphere.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.org_sphere.name}" value="{ $fields.org_sphere.value }">
{ $fields.org_sphere.options[$fields.org_sphere.value]}
{/if}
{/if}
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.campaign_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_CAMPAIGN' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="relate" field="campaign_name" width='37.5%' colspan='3' >
{if !$fields.campaign_name.hidden}
{counter name="panelFieldCount"}

{if !empty($fields.campaign_id.value)}
{capture assign="detail_url"}index.php?module=Campaigns&action=DetailView&record={$fields.campaign_id.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="campaign_id" class="sugar_field" data-id-value="{$fields.campaign_id.value}">{$fields.campaign_name.value}</span>
{if !empty($fields.campaign_id.value)}</a>{/if}
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.photo.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_PHOTO' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="image" field="photo" width='37.5%' colspan='3' >
{if !$fields.photo.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.photo.name}">
<img src="index.php?entryPoint=download&id={$fields.id.value}_{$fields.photo.name}{$fields.width.value}&type={$module}" style="max-width: {if !$vardef.width}120{else}200{/if}px;" height="{if !$vardef.height}240{else}50{/if}">
</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_PANEL_ADVANCED").style.display='none';</script>
{/if}
</div>    <div id='tabcontent5'>
<div id='detailpanel_7' class='detail view  detail508 expanded'>
{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
<!-- PANEL CONTAINER HERE.. -->
<table id='LBL_PANEL_ASSIGNMENT' class="panelContainer" cellspacing='{$gridline}'>
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.assigned_user_name.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="relate" field="assigned_user_name" width='37.5%' colspan='3' >
{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount"}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.message_to_assigned.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_MESTOASIGNED' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="text" field="message_to_assigned" width='37.5%' colspan='3' >
{if !$fields.message_to_assigned.hidden}
{counter name="panelFieldCount"}

<span class="sugar_field" id="{$fields.message_to_assigned.name|escape:'html'|url2html|nl2br}">{$fields.message_to_assigned.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
{counter name="fieldsUsed" start=0 print=false assign="fieldsUsed"}
{counter name="fieldsHidden" start=0 print=false assign="fieldsHidden"}
{capture name="tr" assign="tableRow"}
<tr>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
{if !$fields.refered_by.hidden}
{capture name="label" assign="label"}{sugar_translate label='LBL_REFERED_BY' module='Leads'}{/capture}
{$label|strip_semicolon}:
{/if}
</td>
<td class="inlineEdit" type="varchar" field="refered_by" width='37.5%' colspan='3' >
{if !$fields.refered_by.hidden}
{counter name="panelFieldCount"}

{if strlen($fields.refered_by.value) <= 0}
{assign var="value" value=$fields.refered_by.default_value }
{else}
{assign var="value" value=$fields.refered_by.value }
{/if} 
<span class="sugar_field" id="{$fields.refered_by.name}">{$fields.refered_by.value}</span>
{/if}
<div class="inlineEditIcon"> {sugar_getimage name="inline_edit_icon.svg" attr='border="0" ' alt="$alt_edit"}</div>			</td>
{counter name="fieldsUsed"}
<td width='12.5%' scope="col">
&nbsp;
</td>
<td class="" type="" field="" width='37.5%'  >
</td>
</tr>
{/capture}
{if $fieldsUsed > 0 && $fieldsUsed != $fieldsHidden}
{$tableRow}
{/if}
</table>
</div>
{if $panelFieldCount == 0}
<script>document.getElementById("LBL_PANEL_ASSIGNMENT").style.display='none';</script>
{/if}
</div>
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script><script type='text/javascript' src='{sugar_getjspath file='include/javascript/popup_helper.js'}'></script>
<script type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui_widgets.js'}"></script>
<script type="text/javascript">
var Leads_detailview_tabs = new YAHOO.widget.TabView("Leads_detailview_tabs");
Leads_detailview_tabs.selectTab(0);
</script>
<script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>