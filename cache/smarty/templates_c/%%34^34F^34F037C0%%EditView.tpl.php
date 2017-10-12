<?php /* Smarty version 2.6.29, created on 2017-10-10 17:30:55
         compiled from include/SugarFields/Fields/Multitextfield/EditView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugarvar', 'include/SugarFields/Fields/Multitextfield/EditView.tpl', 11, false),)), $this); ?>
{php}
global $current_language; $app_list_strings = return_app_list_strings_language($current_language);
$this->assign('APP_LIST', $app_list_strings['phone_type_dom']);
$select_option_type = '';
foreach ($app_list_strings['phone_type_dom'] as $key=>$val)
{
  $select_option_type .= '<option value="' . $key . '">' . $val . '</option>';
}
{/php}

{assign var=texts value="^|^"|explode:<?php echo smarty_function_sugarvar(array('key' => 'value','string' => true), $this);?>
}
{assign var=textCounter value=0}
{assign var=cur_count value=$texts|@count }

<script type="text/javascript" language="javascript">
var cur_count = {$cur_count};

function <?php echo smarty_function_sugarvar(array('key' => 'name'), $this);?>
_sugarField()
{ldelim}
var <?php echo smarty_function_sugarvar(array('key' => 'name'), $this);?>
 = '<?php echo smarty_function_sugarvar(array('key' => 'name'), $this);?>
';
return <?php echo smarty_function_sugarvar(array('key' => 'name'), $this);?>
;
{rdelim}

function addTextRow()
{ldelim}
	cur_count += 1;
	var table = document.getElementById("{$module}texts");
	var rowCount = table.rows.length;
	var newRow = table.insertRow(rowCount);
	newRow.id = "{$module}textRow" + cur_count;

	// it's quite ugly code but cross-browser
	var newTD5 = document.createElement('td');
	newTD5.align='center';
	newTD5.innerHTML = '<select name="{$module}textFlag3_'+cur_count+'" id="{$module}textFlag3_'+cur_count+'" enabled="true">{php}echo $select_option_type;{/php}</select>';
	newRow.appendChild (newTD5);
	var newTD1 = document.createElement('td');
	newTD1.innerHTML = '<input type="text" name="{$module}textFlag0_'+cur_count+'" id="{$module}textFlag0_'+cur_count+'" size="30" value="">';
	newRow.appendChild (newTD1);
	var newTD2 = document.createElement('td');
	newTD2.innerHTML = '&nbsp;<img onclick="delTextRow(\'{$module}textRow'+cur_count+'\')" id="{$module}removeButton0" class="id-ff-remove" name="0" src="{sugar_getimagepath file="id-ff-remove-new.png"}">';
	newRow.appendChild (newTD2);
	var newTD3 = document.createElement('td');
	newTD3.align='center';
	newTD3.innerHTML = '<td align="center"><input type="radio" name="{$module}textFlag1" value="'+cur_count+'" id="{$module}textFlag1_'+cur_count+'" enabled="true">';
	newRow.appendChild (newTD3);
	var newTD4 = document.createElement('td');
	newTD4.align='center';
	newTD4.innerHTML = '<input type="checkbox" name="{$module}textFlag2[]" value="'+cur_count+'" id="{$module}textFlag2_'+cur_count+'" enabled="true">';
	newRow.appendChild (newTD4);
{rdelim}


function delTextRow(row_id)
{ldelim}
	var parent = document.getElementById(row_id).parentNode;
	parent.removeChild(document.getElementById(row_id));
{rdelim}
</script>

<span id="exttext">
<table style="border-spacing: 0pt;">
	<tr>
		<td valign="top" nowrap="">
			<table class="emailaddresses" id="{$module}texts">
				<tr>
					</td>
					<td nowrap="" scope="row">
					<span class="id-ff multiple ownline">
					<button value="Добавить" onclick="javascript:addTextRow()" type="button" class="button">
						<img src="{sugar_getimagepath file="id-ff-add-new.png"}">
					</button>
					</span>
					</td>
					<td nowrap="" scope="row">
					 &nbsp;
					</td>
					<td scope="row" NOWRAP>
					    &nbsp;
					</td>
					<td nowrap="" scope="row">
					{$APP.LBL_PHONE_MAIN} 
					</td>
					<td nowrap="" scope="row">
					{$APP.LBL_PHONE_DONT_CALL}
				</tr>
				{foreach name=outer item=text from=$texts}
				{assign var=item value="^,^"|explode:$text}
				<tr id="{$module}textRow{$textCounter}">

					<td align="center">
						<select  name="{$module}textFlag3_{$textCounter}" id="{$module}textFlag3_{$textCounter}" enabled="true" >
						  {foreach name=app_li item=val key=key from=$APP_LIST}
						  <option value="{$key}" {if $item.3 == $key}selected=true{/if} >{$val}</option>
						  {/foreach}
						</select>
					</td>

					<td nowrap="NOWRAP">
						<input type="text" name="{$module}textFlag0_{$textCounter}" id="{$module}textFlag0_{$textCounter}" size="30" value="{$item.0}">
					</td>
					<td>
						&nbsp;<img onclick="delTextRow('{$module}textRow{$textCounter}')" id="{$module}removeButton0" class="id-ff-remove" name="0" src="{sugar_getimagepath file="id-ff-remove-new.png"}">
					</td>
					<td align="center">
						<input type="radio" name="{$module}textFlag1" value="{$textCounter}" id="{$module}textFlag1_{$textCounter}" enabled="true" {if $item.1 == '1'}checked="true"{/if}>
					</td>
					<td align="center">
						<input type="checkbox" name="{$module}textFlag2[]" value="{$textCounter}" id="{$module}textFlag2_{$textCounter}" enabled="true" {if $item.2 == '1'}checked="true"{/if}>
					</td>
				</tr>
				{assign var=textCounter value=$textCounter+1}
				{/foreach}
			</table>
		</td>
	</tr>
</table>
</span>