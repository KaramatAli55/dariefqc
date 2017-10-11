
{if strlen($fields.margin_bottom.value) <= 0}
{assign var="value" value=$fields.margin_bottom.default_value }
{else}
{assign var="value" value=$fields.margin_bottom.value }
{/if}  
<input type='text' name='{$fields.margin_bottom.name}' 
id='{$fields.margin_bottom.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >