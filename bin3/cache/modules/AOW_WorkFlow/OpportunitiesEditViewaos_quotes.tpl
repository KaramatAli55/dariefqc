
<input type="text" name="{$fields.aos_quotes.name}" class="sqsEnabled" tabindex="1" id="{$fields.aos_quotes.name}" size="" value="{$fields.aos_quotes.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.aos_quotes.id_name}" 
	id="{$fields.aos_quotes.id_name}" 
	value="{$fields.aos_quotes_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.aos_quotes.name}" id="btn_{$fields.aos_quotes.name}" tabindex="1" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
    "{$fields.aos_quotes.module}", 
	600, 
	400, 
	"", 
	true, 
	false, 
	{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":{/literal}"{$fields.aos_quotes.id_name}"{literal},"name":{/literal}"{$fields.aos_quotes.name}"{literal}}}{/literal}, 
	"single", 
	true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.aos_quotes.name}" id="btn_clr_{$fields.aos_quotes.name}" tabindex="1" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.aos_quotes.name}', '{$fields.aos_quotes.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.aos_quotes.name}']) != 'undefined'",
		enableQS
);
</script>