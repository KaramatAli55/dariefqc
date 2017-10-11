
{if strlen($fields.account_num_c.value) <= 0}
{assign var="value" value=$fields.account_num_c.default_value }
{else}
{assign var="value" value=$fields.account_num_c.value }
{/if}  
<input type='text' name='{$fields.account_num_c.name}' 
    id='{$fields.account_num_c.name}' size='30' 
    maxlength='4' 
    value='{$value}' title=''  tabindex='1'      >