
<input type="text" name="{$fields.quotes_relate_one_to_many.name}" class="sqsEnabled" tabindex="1" id="{$fields.quotes_relate_one_to_many.name}" size="" value="{$fields.quotes_relate_one_to_many.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.quotes_relate_one_to_many.id_name}" 
	id="{$fields.quotes_relate_one_to_many.id_name}" 
	value="{$fields.quotes_relate_one_to_many_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.quotes_relate_one_to_many.name}" id="btn_{$fields.quotes_relate_one_to_many.name}" tabindex="1" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
    "{$fields.quotes_relate_one_to_many.module}", 
	600, 
	400, 
	"", 
	true, 
	false, 
	{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":{/literal}"{$fields.quotes_relate_one_to_many.id_name}"{literal},"name":{/literal}"{$fields.quotes_relate_one_to_many.name}"{literal}}}{/literal}, 
	"single", 
	true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.quotes_relate_one_to_many.name}" id="btn_clr_{$fields.quotes_relate_one_to_many.name}" tabindex="1" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.quotes_relate_one_to_many.name}', '{$fields.quotes_relate_one_to_many.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.quotes_relate_one_to_many.name}']) != 'undefined'",
		enableQS
);
</script>