
<input type="text" name="{$fields.project_name.name}" class="sqsEnabled" tabindex="1" id="{$fields.project_name.name}" size="" value="{$fields.project_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.project_name.id_name}" 
	id="{$fields.project_name.id_name}" 
	value="{$fields.project_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.project_name.name}" id="btn_{$fields.project_name.name}" tabindex="1" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
    "{$fields.project_name.module}", 
	600, 
	400, 
	"", 
	true, 
	false, 
	{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":{/literal}"{$fields.project_name.id_name}"{literal},"name":{/literal}"{$fields.project_name.name}"{literal}}}{/literal}, 
	"single", 
	true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.project_name.name}" id="btn_clr_{$fields.project_name.name}" tabindex="1" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.project_name.name}', '{$fields.project_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.project_name.name}']) != 'undefined'",
		enableQS
);
</script>