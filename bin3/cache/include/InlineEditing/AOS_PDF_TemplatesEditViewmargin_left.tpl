
{if strlen($fields.margin_left.value) <= 0}
{assign var="value" value=$fields.margin_left.default_value }
{else}
{assign var="value" value=$fields.margin_left.value }
{/if}  
<input type='text' name='{$fields.margin_left.name}' 
id='{$fields.margin_left.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >