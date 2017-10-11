

{if is_string($fields.case_location_c.options)}
<input type="hidden" class="sugar_field" id="{$fields.case_location_c.name}" value="{ $fields.case_location_c.options }">
{ $fields.case_location_c.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.case_location_c.name}" value="{ $fields.case_location_c.value }">
{ $fields.case_location_c.options[$fields.case_location_c.value]}
{/if}
