<?php

require_once('include/SugarFields/Fields/Base/SugarFieldBase.php');

class SugarFieldMultiTextField extends SugarFieldBase
{

    public function formatField($rawField, $vardef)
    {
    	if (empty($rawField)) return $rawField;

    	$fields = explode('^|^', $rawField);
    	$params = array('',0,0,'');
    	foreach($fields as $field)
    	{
    		$params = explode('^,^', $field);
    		if (intval($params[1]) == 1) return $params[0];
    	}
        return $params[0];
    }


	function getDetailViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex)
	{
	    global $app_strings;

		$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);

        return $this->fetch('include/SugarFields/Fields/Multitextfield/DetailView.tpl');
    }

    function getEditViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex)
    {
    	$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);
        return $this->fetch('include/SugarFields/Fields/Multitextfield/EditView.tpl');
    }

	function getSearchViewSmarty($parentFieldArray, $vardef, $displayParams, $tabindex)
	{
		$this->setup($parentFieldArray, $vardef, $displayParams, $tabindex);
		return $this->fetch('include/SugarFields/Fields/Multitextfield/SearchView.tpl');
	}

	public function save(&$bean, $params, $field, $properties, $prefix = '')
	{
		global $module;

		$prefix = $module . 'textFlag';
		$texts = array();

		//сохраняем номер телефона
		foreach ($params as $key => $val)
		{
			if (strpos($key, $prefix . '0_') === 0)
			{
				$new_key = intval(str_replace($prefix . '0_', '', $key));
				if (empty($val)) continue; //Это пустая запись не будем сохранять ее
				if (!isset($first_key)) $first_key = $new_key;

				$texts[$new_key] = array(
						0 => $val,
						1 => 0,
						2 => 0,
						3 => '',
						4 => $this->only_digit($val),
					);
			}
		}

		//сохраняем селект атрибуты
		foreach ($params as $key => $val)
		{
			if (strpos($key, $prefix . '3_') === 0)
			{
				$new_key = intval(str_replace($prefix . '3_', '', $key));

				if (empty($val)) continue; //Это пустая запись не будем сохранять ее
				if (isset($texts[$new_key]) AND !empty($texts[$new_key])) $texts[$new_key][3] = $val;
			}
		}

		if (!empty($texts))
		{
			//Основной
			if (isset($params[$prefix . '1']))
			{
				$key = intval($params[$prefix . '1']);
				if (isset($texts[$key])) $texts[$key][1] = 1;
				else $texts[$first_key][1] = 1;
			}
			else
			{
				$texts[$first_key][1] = 1;
			}

			// Все чекбокс атрибуты
			for ($i = 2; $i <= 2; $i++) // он у нас только один (не звонить), но вообще сделано универсально, можно добавить атрибуты
			{
				if (isset($params[$prefix . $i]) and is_array($params[$prefix . $i]))
				{
					foreach ($params[$prefix . $i] as $value)
					{
						$intval = intval($value);
						if (isset($texts[$intval])) $texts[$intval][$i] = 1;
					}
				}
			}

			$ext_text = array();
			foreach ($texts as $key => $val)
			{
				$ext_text[] = join('^,^', $val);
			}
			$bean->$field = join('^|^', $ext_text);
		}
		else
		{
			$bean->$field = '';
		}
     }

     private function only_digit($text)
     {
     	$pattern = '/[^0-9]*/';
		return preg_replace($pattern, '', $text);
     }
}
?>
