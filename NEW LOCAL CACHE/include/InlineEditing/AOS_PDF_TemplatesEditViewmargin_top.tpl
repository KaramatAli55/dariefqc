
{if strlen($fields.margin_top.value) <= 0}
{assign var="value" value=$fields.margin_top.default_value }
{else}
{assign var="value" value=$fields.margin_top.value }
{/if}  
<input type='text' name='{$fields.margin_top.name}' 
id='{$fields.margin_top.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >