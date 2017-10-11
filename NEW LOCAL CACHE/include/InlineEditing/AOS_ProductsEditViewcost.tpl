
{if strlen($fields.cost.value) <= 0}
{assign var="value" value=$fields.cost.default_value }
{else}
{assign var="value" value=$fields.cost.value }
{/if}  
<input type='text' name='{$fields.cost.name}' 
id='{$fields.cost.name}' size='30' maxlength='26,6' value='{sugar_number_format var=$value}' title='' tabindex='1'
 >