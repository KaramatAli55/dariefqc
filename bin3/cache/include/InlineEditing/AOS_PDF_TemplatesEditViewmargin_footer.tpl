
{if strlen($fields.margin_footer.value) <= 0}
{assign var="value" value=$fields.margin_footer.default_value }
{else}
{assign var="value" value=$fields.margin_footer.value }
{/if}  
<input type='text' name='{$fields.margin_footer.name}' 
id='{$fields.margin_footer.name}' size='30' maxlength='255' value='{sugar_number_format precision=0 var=$value}' title='' tabindex='1'    >