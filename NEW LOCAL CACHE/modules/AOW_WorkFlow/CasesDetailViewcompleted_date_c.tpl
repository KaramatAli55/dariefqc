

    {if strlen($fields.completed_date_c.value) <= 0}
        {assign var="value" value=$fields.completed_date_c.default_value }
    {else}
        {assign var="value" value=$fields.completed_date_c.value }
    {/if}



<span class="sugar_field" id="{$fields.completed_date_c.name}">{$value}</span>
