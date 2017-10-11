
{if empty($fields.update_text.value)}
{assign var="value" value=$fields.update_text.default_value }
{else}
{assign var="value" value=$fields.update_text.value }
{/if}




<textarea  id='{$fields.update_text.name}' name='{$fields.update_text.name}'
rows="2"
cols="32"
title='' tabindex="1" 
 >{$value}</textarea>


{literal}{/literal}