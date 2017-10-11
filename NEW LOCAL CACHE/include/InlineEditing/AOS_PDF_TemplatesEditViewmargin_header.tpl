
{if strlen($fields.margin_header.value) <= 0}
{assign var="value" value=$fields.margin_header.default_value }
{else}
{assign var="value" value=$fields.margin_header.value }
{/if}  
<input type='text' name='{$fields.margin_header.name}' 
id='{$fields.margin_header.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >