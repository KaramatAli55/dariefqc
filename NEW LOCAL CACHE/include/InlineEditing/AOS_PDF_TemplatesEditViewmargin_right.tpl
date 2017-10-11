
{if strlen($fields.margin_right.value) <= 0}
{assign var="value" value=$fields.margin_right.default_value }
{else}
{assign var="value" value=$fields.margin_right.value }
{/if}  
<input type='text' name='{$fields.margin_right.name}' 
id='{$fields.margin_right.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >