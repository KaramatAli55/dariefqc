
{if strlen($fields.case_materials_c.value) <= 0}
{assign var="value" value=$fields.case_materials_c.default_value }
{else}
{assign var="value" value=$fields.case_materials_c.value }
{/if} 
<span class="sugar_field" id="{$fields.case_materials_c.name}">{$fields.case_materials_c.value}</span>
