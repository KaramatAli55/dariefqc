

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
{$PAGINATION}
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Contracts'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOS_Contracts'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOS_Contracts_subpanel_save_button');return false;" type="submit" name="AOS_Contracts_subpanel_save_button" id="AOS_Contracts_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOS_Contracts_subpanel_cancel_button" id="AOS_Contracts_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Contracts'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOS_Contracts_subpanel_full_form_button" id="AOS_Contracts_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Contracts", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
{$PAGINATION}
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">test</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='AOS_Contracts'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="detailpanel_-1">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}  
<input type='text' name='{$fields.name.name}' 
id='{$fields.name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''       
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.status.options }
{capture name="field_val"}{$fields.status.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.status.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.status.name}" 
id="{$fields.status.name}" 
title=''          
>
{if isset($fields.status.value) && $fields.status.value != ''}
{html_options options=$fields.status.options selected=$fields.status.value}
{else}
{html_options options=$fields.status.options selected=$fields.status.default}
{/if}
</select>
<input
id="{$fields.status.name}-input"
name="{$fields.status.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.status.name}-image"></button><button type="button"
id="btn-clear-{$fields.status.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.status.name}-input', '{$fields.status.name}');sync_{$fields.status.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.status.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.status.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.status.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.status.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.status.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.status.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.status.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_START_DATE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="start_date"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.start_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.start_date.name}" id="{$fields.start_date.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.start_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.start_date.name}",
form : "form_SubpanelQuickCreate_AOS_Contracts",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.start_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_REFERENCE_CODE ' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="reference_code"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.reference_code.value) <= 0}
{assign var="value" value=$fields.reference_code.default_value }
{else}
{assign var="value" value=$fields.reference_code.value }
{/if}  
<input type='text' name='{$fields.reference_code.name}' 
id='{$fields.reference_code.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_END_DATE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="end_date"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.end_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.end_date.name}" id="{$fields.end_date.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.end_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.end_date.name}",
form : "form_SubpanelQuickCreate_AOS_Contracts",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.end_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_CONTRACT_ACCOUNT' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="contract_account"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.contract_account.name}" class="sqsEnabled" tabindex="" id="{$fields.contract_account.name}" size="" value="{$fields.contract_account.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.contract_account.id_name}" 
id="{$fields.contract_account.id_name}" 
value="{$fields.contract_account_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.contract_account.name}" id="btn_{$fields.contract_account.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_ACCOUNTS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_ACCOUNTS_LABEL"}"
onclick='open_popup(
"{$fields.contract_account.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_AOS_Contracts","field_to_name_array":{"id":"contract_account_id","name":"contract_account"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.contract_account.name}" id="btn_clr_{$fields.contract_account.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_ACCOUNTS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.contract_account.name}', '{$fields.contract_account.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_ACCOUNTS_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.contract_account.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_RENEWAL_REMINDER_DATE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetimecombo" field="renewal_reminder_date"  >
{counter name="panelFieldCount" print=false}

<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap>
<input autocomplete="off" type="text" id="{$fields.renewal_reminder_date.name}_date" class="datetimecombo_date" value="{$fields[$fields.renewal_reminder_date.name].value}" size="11" maxlength="10" title='' tabindex="" onblur="combo_{$fields.renewal_reminder_date.name}.update();" onchange="combo_{$fields.renewal_reminder_date.name}.update(); "    >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.renewal_reminder_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}&nbsp;
</td>
<td nowrap>
<div id="{$fields.renewal_reminder_date.name}_time_section" class="datetimecombo_time_section"></div>
</td>
</tr>
</table>
<input type="hidden" class="DateTimeCombo" id="{$fields.renewal_reminder_date.name}" name="{$fields.renewal_reminder_date.name}" value="{$fields[$fields.renewal_reminder_date.name].value}">
<script type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"></script>
<script type="text/javascript">
var combo_{$fields.renewal_reminder_date.name} = new Datetimecombo("{$fields[$fields.renewal_reminder_date.name].value}", "{$fields.renewal_reminder_date.name}", "{$TIME_FORMAT}", "", '', false, true);
//Render the remaining widget fields
text = combo_{$fields.renewal_reminder_date.name}.html('');
document.getElementById('{$fields.renewal_reminder_date.name}_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_{$fields.renewal_reminder_date.name}.jsscript(''));

//bug 47718: this causes too many addToValidates to be called, resulting in the error messages being displayed multiple times
//    removing it here to mirror the Datetime SugarField, where the validation is not added at this level
//addToValidate('{$form_name}',"{$fields.renewal_reminder_date.name}_date",'date',false,"{$fields.renewal_reminder_date.name}");
addToValidateBinaryDependency('{$form_name}',"{$fields.renewal_reminder_date.name}_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"{$fields.renewal_reminder_date.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.renewal_reminder_date.name}_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"{$fields.renewal_reminder_date.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.renewal_reminder_date.name}_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","{$fields.renewal_reminder_date.name}_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_{$fields.renewal_reminder_date.name},
	inputField : "{$fields.renewal_reminder_date.name}_date",
    form : "form_SubpanelQuickCreate_AOS_Contracts",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "{$fields.renewal_reminder_date.name}_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_{$fields.renewal_reminder_date.name}
	{rdelim});

	//Call update for first time to round hours and minute values
	combo_{$fields.renewal_reminder_date.name}.update(false);

{rdelim}); 
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_OPPORTUNITY' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="opportunity"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.opportunity.name}" class="sqsEnabled" tabindex="" id="{$fields.opportunity.name}" size="" value="{$fields.opportunity.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.opportunity.id_name}" 
id="{$fields.opportunity.id_name}" 
value="{$fields.opportunity_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.opportunity.name}" id="btn_{$fields.opportunity.name}" tabindex="" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.opportunity.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_AOS_Contracts","field_to_name_array":{"id":"opportunity_id","name":"opportunity"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.opportunity.name}" id="btn_clr_{$fields.opportunity.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.opportunity.name}', '{$fields.opportunity.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.opportunity.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_CUSTOMER_SIGNED_DATE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="customer_signed_date"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.customer_signed_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.customer_signed_date.name}" id="{$fields.customer_signed_date.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.customer_signed_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.customer_signed_date.name}",
form : "form_SubpanelQuickCreate_AOS_Contracts",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.customer_signed_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_COMPANY_SIGNED_DATE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="company_signed_date"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.company_signed_date.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.company_signed_date.name}" id="{$fields.company_signed_date.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.company_signed_date.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.company_signed_date.name}",
form : "form_SubpanelQuickCreate_AOS_Contracts",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.company_signed_date.name}_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_CONTRACT_TYPE' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="contract_type"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.contract_type.name}" 
id="{$fields.contract_type.name}" 
title=''       
>
{if isset($fields.contract_type.value) && $fields.contract_type.value != ''}
{html_options options=$fields.contract_type.options selected=$fields.contract_type.value}
{else}
{html_options options=$fields.contract_type.options selected=$fields.contract_type.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.contract_type.options }
{capture name="field_val"}{$fields.contract_type.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.contract_type.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.contract_type.name}" 
id="{$fields.contract_type.name}" 
title=''          
>
{if isset($fields.contract_type.value) && $fields.contract_type.value != ''}
{html_options options=$fields.contract_type.options selected=$fields.contract_type.value}
{else}
{html_options options=$fields.contract_type.options selected=$fields.contract_type.default}
{/if}
</select>
<input
id="{$fields.contract_type.name}-input"
name="{$fields.contract_type.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.contract_type.name}-image"></button><button type="button"
id="btn-clear-{$fields.contract_type.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.contract_type.name}-input', '{$fields.contract_type.name}');sync_{$fields.contract_type.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.contract_type.name}{literal}");
			
			if (typeof select_defaults =="undefined")
				select_defaults = [];
			
			select_defaults[selectElem.id] = {key:selectElem.value,text:''};

			//get default
			for (i=0;i<selectElem.options.length;i++){
				if (selectElem.options[i].value==selectElem.value)
					select_defaults[selectElem.id].text = selectElem.options[i].innerHTML;
			}

			//SUGAR.AutoComplete.{$ac_key}.ds = 
			//get options array from vardefs
			var options = SUGAR.AutoComplete.getOptionsArray("");

			YUI().use('datasource', 'datasource-jsonschema',function (Y) {
				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds = new Y.DataSource.Function({
				    source: function (request) {
				    	var ret = [];
				    	for (i=0;i<selectElem.options.length;i++)
				    		if (!(selectElem.options[i].value=='' && selectElem.options[i].innerHTML==''))
				    			ret.push({'key':selectElem.options[i].value,'text':selectElem.options[i].innerHTML});
				    	return ret;
				    }
				});
			});
		})();
		{/literal}
	
	{literal}
		YUI().use("autocomplete", "autocomplete-filters", "autocomplete-highlighters", "node","node-event-simulate", function (Y) {
	{/literal}
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.contract_type.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.contract_type.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.contract_type.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.contract_type.name}{literal}");
				var doSimulateChange = false;
				
				if (selectElem.value!=selectme)
					doSimulateChange=true;
				
				selectElem.value=selectme;

				for (i=0;i<selectElem.options.length;i++){
					selectElem.options[i].selected=false;
					if (selectElem.options[i].value==selectme)
						selectElem.options[i].selected=true;
				}

				if (doSimulateChange)
					SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('change');
			}

			//global variable 
			sync_{/literal}{$fields.contract_type.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.contract_type.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.contract_type.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.contract_type.name}{literal}", syncFromHiddenToWidget);
		{/literal}

		SUGAR.AutoComplete.{$ac_key}.minQLen = 0;
		SUGAR.AutoComplete.{$ac_key}.queryDelay = 0;
		SUGAR.AutoComplete.{$ac_key}.numOptions = {$field_options|@count};
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 300) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 200;
			{literal}
		}
		{/literal}
		if(SUGAR.AutoComplete.{$ac_key}.numOptions >= 3000) {literal}{
			{/literal}
			SUGAR.AutoComplete.{$ac_key}.minQLen = 1;
			SUGAR.AutoComplete.{$ac_key}.queryDelay = 500;
			{literal}
		}
		{/literal}
		
	SUGAR.AutoComplete.{$ac_key}.optionsVisible = false;
	
	{literal}
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.plug(Y.Plugin.AutoComplete, {
		activateFirstItem: true,
		{/literal}
		minQueryLength: SUGAR.AutoComplete.{$ac_key}.minQLen,
		queryDelay: SUGAR.AutoComplete.{$ac_key}.queryDelay,
		zIndex: 99999,

				
		{literal}
		source: SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.ds,
		
		resultTextLocator: 'text',
		resultHighlighter: 'phraseMatch',
		resultFilters: 'phraseMatch',
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover = function(ex){
		var hover = YAHOO.util.Dom.getElementsByClassName('dccontent');
		if(hover[0] != null){
			if (ex) {
				var h = '1000px';
				hover[0].style.height = h;
			}
			else{
				hover[0].style.height = '';
			}
		}
	}
		
	if({/literal}SUGAR.AutoComplete.{$ac_key}.minQLen{literal} == 0){
		// expand the dropdown options upon focus
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function () {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.sendRequest('');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = true;
		});
	}

			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('click', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('click');
		});
		
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('dblclick', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('dblclick');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('focus', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('focus');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mouseup', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mouseup');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('mousedown', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('mousedown');
		});

		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.on('blur', function(e) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.simulate('blur');
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible = false;
			var selectElem = document.getElementById("{/literal}{$fields.contract_type.name}{literal}");
			//if typed value is a valid option, do nothing
			for (i=0;i<selectElem.options.length;i++)
				if (selectElem.options[i].innerHTML==SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value'))
					return;
			
			//typed value is invalid, so set the text and the hidden to blank
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value', select_defaults[selectElem.id].text);
			SyncToHidden(select_defaults[selectElem.id].key);
		});
	
	// when they click on the arrow image, toggle the visibility of the options
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputImage.ancestor().on('click', function () {
		if (SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.optionsVisible) {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.blur();
		} else {
			SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.focus();
		}
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('query', function () {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputHidden.set('value', '');
	});

	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('visibleChange', function (e) {
		SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.expandHover(e.newVal); // expand
	});

	// when they select an option, set the hidden input with the KEY, to be saved
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.ac.on('select', function(e) {
		SyncToHidden(e.result.raw.key);
	});
 
});
</script> 
{/literal}
{/if}
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6"
cols="80"
title='' tabindex="" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PURCHASE_ORDER_NUMBER' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="varchar" field="purchase_order_number"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.purchase_order_number.value) <= 0}
{assign var="value" value=$fields.purchase_order_number.default_value }
{else}
{assign var="value" value=$fields.purchase_order_number.value }
{/if}  
<input type='text' name='{$fields.purchase_order_number.name}' 
id='{$fields.purchase_order_number.name}' size='30' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_CONTRACT_ATTACHMENT' module='AOS_Contracts'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="file" field="filename"  >
{counter name="panelFieldCount" print=false}

<script type="text/javascript" src='include/SugarFields/Fields/File/SugarFieldFile.js?v=4klK0o_m0kKwMH64N01jUA'></script>
{if !empty($fields.filename.value) }
{assign var=showRemove value=true}
{else}
{assign var=showRemove value=false}
{/if}
{assign var=noChange value=false}
<input type="hidden" name="deleteAttachment" value="0">
<input type="hidden" name="{$fields.filename.name}" id="{$fields.filename.name}" value="{$fields.filename.value}">
<span id="{$fields.filename.name}_old" style="display:{if !$showRemove}none;{/if}">
<a href="index.php?entryPoint=download&id={$fields.id.value}&type={$module}" class="tabDetailViewDFLink">{$fields.filename.value}</a>
{if !$noChange}
<input type='button' class='button' id='remove_button' value='{$APP.LBL_REMOVE}' onclick='SUGAR.field.file.deleteAttachment("{$fields.filename.name}","",this);'>
{/if}
</span>
{if !$noChange}
<span id="{$fields.filename.name}_new" style="display:{if $showRemove}none;{/if}">
<input type="hidden" name="{$fields.filename.name}_escaped">
<input id="{$fields.filename.name}_file" name="{$fields.filename.name}_file" 
type="file" title='' size="30"
maxlength='255'
>
{else}

{/if}
</span>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Contracts'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_AOS_Contracts'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'AOS_Contracts_subpanel_save_button');return false;" type="submit" name="AOS_Contracts_subpanel_save_button" id="AOS_Contracts_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="AOS_Contracts_subpanel_cancel_button" id="AOS_Contracts_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_AOS_Contracts'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="AOS_Contracts_subpanel_full_form_button" id="AOS_Contracts_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=AOS_Contracts", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_AOS_Contracts",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_AOS_Contracts) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li').click(function(e){
            if(typeof $(this).find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse"]').click(function(e){
            var content;
            if($(this).hasClass('collapsed')) {
                $(this).removeClass('collapsed');
                if($(this).closest('.panel-content').length) {
                    content = $(this).closest('.panel-content').find('.panel-body.panel-collapse.collapse');
                }
                else if($(this).closest('.panel.panel-default').length){
                    content = $(this).closest('.panel.panel-default').next();
                }
                content.addClass('in');
            } else {
                $(this).addClass('collapsed');
                if($(this).closest('.panel-content').length) {
                    content = $(this).closest('.panel-content').find('.panel-body.panel-collapse.collapse');
                }
                else if($(this).closest('.panel.panel-default').length){
                    content = $(this).closest('.panel.panel-default').next();
                }
                content.removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('form_SubpanelQuickCreate_AOS_Contracts');addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'reference_code', 'varchar', false,'{/literal}{sugar_translate label='LBL_REFERENCE_CODE ' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'start_date', 'date', false,'{/literal}{sugar_translate label='LBL_START_DATE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'end_date', 'date', false,'{/literal}{sugar_translate label='LBL_END_DATE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_contract_value', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_CONTRACT_VALUE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_contract_value_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_CONTRACT_VALUE_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'currency_id', 'id', false,'{/literal}{sugar_translate label='LBL_CURRENCY' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'status', 'enum', true,'{/literal}{sugar_translate label='LBL_STATUS' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'customer_signed_date', 'date', false,'{/literal}{sugar_translate label='LBL_CUSTOMER_SIGNED_DATE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'company_signed_date', 'date', false,'{/literal}{sugar_translate label='LBL_COMPANY_SIGNED_DATE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'renewal_reminder_date_date', 'date', false,'Renewal Reminder Date' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'contract_type', 'enum', false,'{/literal}{sugar_translate label='LBL_CONTRACT_TYPE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'contract_account_id', 'id', false,'{/literal}{sugar_translate label='' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'contract_account', 'relate', true,'{/literal}{sugar_translate label='LBL_CONTRACT_ACCOUNT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'opportunity_id', 'id', false,'{/literal}{sugar_translate label='' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'opportunity', 'relate', false,'{/literal}{sugar_translate label='LBL_OPPORTUNITY' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'contact_id', 'id', false,'{/literal}{sugar_translate label='' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'contact', 'relate', false,'{/literal}{sugar_translate label='LBL_CONTACT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'call_id', 'id', false,'{/literal}{sugar_translate label='' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'line_items', 'function', false,'{/literal}{sugar_translate label='LBL_LINE_ITEMS' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_amt', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_AMT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_amt_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_AMT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'subtotal_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_SUBTOTAL_AMOUNT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'subtotal_amount_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_SUBTOTAL_AMOUNT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'discount_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_DISCOUNT_AMOUNT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'discount_amount_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_DISCOUNT_AMOUNT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'tax_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_TAX_AMOUNT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'tax_amount_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_TAX_AMOUNT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'shipping_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_SHIPPING_AMOUNT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'shipping_amount_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_SHIPPING_AMOUNT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'shipping_tax', 'enum', false,'{/literal}{sugar_translate label='LBL_SHIPPING_TAX' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'shipping_tax_amt', 'currency', false,'{/literal}{sugar_translate label='LBL_SHIPPING_TAX_AMT' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'shipping_tax_amt_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_SHIPPING_TAX_AMT_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_GRAND_TOTAL' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'total_amount_usdollar', 'currency', false,'{/literal}{sugar_translate label='LBL_GRAND_TOTAL_USDOLLAR' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'file_mime_type', 'varchar', false,'{/literal}{sugar_translate label='LBL_FILE_MIME_TYPE' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'file_url', 'function', false,'{/literal}{sugar_translate label='LBL_FILE_URL' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'filename', 'file', false,'{/literal}{sugar_translate label='LBL_FILENAME' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'related_project_name', 'relate', false,'{/literal}{sugar_translate label='LBL_PROJECT_NAME' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'related_project_id', 'id', false,'{/literal}{sugar_translate label='LBL_PROJECT_ID' module='AOS_Contracts' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_AOS_Contracts', 'purchase_order_number', 'varchar', false,'{/literal}{sugar_translate label='LBL_PURCHASE_ORDER_NUMBER' module='AOS_Contracts' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOS_Contracts', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_Contracts' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='AOS_Contracts' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOS_Contracts', 'contract_account', 'alpha', true,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_Contracts' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_CONTRACT_ACCOUNT' module='AOS_Contracts' for_js=true}{literal}', 'contract_account_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_AOS_Contracts', 'opportunity', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='AOS_Contracts' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_OPPORTUNITY' module='AOS_Contracts' for_js=true}{literal}', 'opportunity_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_AOS_Contracts_contract_account']={"form":"form_SubpanelQuickCreate_AOS_Contracts","method":"query","modules":["Accounts"],"group":"or","field_list":["name","id"],"populate_list":["form_SubpanelQuickCreate_AOS_Contracts_contract_account","contract_account_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"required_list":["contract_account_id"],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_AOS_Contracts_opportunity']={"form":"form_SubpanelQuickCreate_AOS_Contracts","method":"query","modules":["Opportunities"],"group":"or","field_list":["name","id"],"populate_list":["opportunity","opportunity_id"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
