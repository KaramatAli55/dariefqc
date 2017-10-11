

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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ProjectTask'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_ProjectTask'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'ProjectTask_subpanel_save_button');return false;" type="submit" name="ProjectTask_subpanel_save_button" id="ProjectTask_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="ProjectTask_subpanel_cancel_button" id="ProjectTask_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ProjectTask'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="ProjectTask_subpanel_full_form_button" id="ProjectTask_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=ProjectTask", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
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
{sugar_translate label='DEFAULT' module='ProjectTask'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in" id="detailpanel_-1">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='ProjectTask'}{/capture}
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
maxlength='50' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_TASK_ID' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="project_task_id"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.project_task_id.value) <= 0}
{assign var="value" value=$fields.project_task_id.default_value }
{else}
{assign var="value" value=$fields.project_task_id.value }
{/if}  
<input type='text' name='{$fields.project_task_id.name}' 
id='{$fields.project_task_id.name}' size='30'  value='{sugar_number_format precision=0 var=$value}' title='' tabindex=''    >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_START' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="date_start"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.date_start.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.date_start.name}" id="{$fields.date_start.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.date_start.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.date_start.name}",
form : "form_SubpanelQuickCreate_ProjectTask",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.date_start.name}_trigger",
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

{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_FINISH' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="date" field="date_finish"  >
{counter name="panelFieldCount" print=false}

<span class="dateTime">
{assign var=date_value value=$fields.date_finish.value }
<input class="date_input" autocomplete="off" type="text" name="{$fields.date_finish.name}" id="{$fields.date_finish.name}" value="{$date_value}" title=''  tabindex=''    size="11" maxlength="10" >
{capture assign="other_attributes"}alt="{$APP.LBL_ENTER_DATE}" style="position:relative; top:6px" border="0" id="{$fields.date_finish.name}_trigger"{/capture}
{sugar_getimage name="jscalendar" ext=".gif" other_attributes="$other_attributes"}
</span>
<script type="text/javascript">
Calendar.setup ({ldelim}
inputField : "{$fields.date_finish.name}",
form : "form_SubpanelQuickCreate_ProjectTask",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "{$fields.date_finish.name}_trigger",
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



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_USER_NAME' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_ProjectTask","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
{counter name="panelFieldCount"  print=false}
<select name="{$fields.status.name}" id="{$fields.status.name}" title="" tabindex="s" onchange="update_percent_complete(this.value);">{if isset($fields.status.value) && $fields.status.value != ""}{html_options options=$fields.status.options selected=$fields.status.value}{else}{html_options options=$fields.status.options selected=$fields.status.default}{/if}</select>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PRIORITY' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="priority"  >
{counter name="panelFieldCount" print=false}

{if !isset($config.enable_autocomplete) || $config.enable_autocomplete==false}
<select name="{$fields.priority.name}" 
id="{$fields.priority.name}" 
title=''       
>
{if isset($fields.priority.value) && $fields.priority.value != ''}
{html_options options=$fields.priority.options selected=$fields.priority.value}
{else}
{html_options options=$fields.priority.options selected=$fields.priority.default}
{/if}
</select>
{else}
{assign var="field_options" value=$fields.priority.options }
{capture name="field_val"}{$fields.priority.value}{/capture}
{assign var="field_val" value=$smarty.capture.field_val}
{capture name="ac_key"}{$fields.priority.name}{/capture}
{assign var="ac_key" value=$smarty.capture.ac_key}
<select style='display:none' name="{$fields.priority.name}" 
id="{$fields.priority.name}" 
title=''          
>
{if isset($fields.priority.value) && $fields.priority.value != ''}
{html_options options=$fields.priority.options selected=$fields.priority.value}
{else}
{html_options options=$fields.priority.options selected=$fields.priority.default}
{/if}
</select>
<input
id="{$fields.priority.name}-input"
name="{$fields.priority.name}-input"
size="30"
value="{$field_val|lookup:$field_options}"
type="text" style="vertical-align: top;">
<span class="id-ff multiple">
<button type="button"><img src="{sugar_getimagepath file="id-ff-down.png"}" id="{$fields.priority.name}-image"></button><button type="button"
id="btn-clear-{$fields.priority.name}-input"
title="Clear"
onclick="SUGAR.clearRelateField(this.form, '{$fields.priority.name}-input', '{$fields.priority.name}');sync_{$fields.priority.name}()"><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
{literal}
<script>
	SUGAR.AutoComplete.{/literal}{$ac_key}{literal} = [];
	{/literal}

			{literal}
		(function (){
			var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
			
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
			
	SUGAR.AutoComplete.{$ac_key}.inputNode = Y.one('#{$fields.priority.name}-input');
	SUGAR.AutoComplete.{$ac_key}.inputImage = Y.one('#{$fields.priority.name}-image');
	SUGAR.AutoComplete.{$ac_key}.inputHidden = Y.one('#{$fields.priority.name}');
	
			{literal}
			function SyncToHidden(selectme){
				var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
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
			sync_{/literal}{$fields.priority.name}{literal} = function(){
				SyncToHidden();
			}
			function syncFromHiddenToWidget(){

				var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");

				//if select no longer on page, kill timer
				if (selectElem==null || selectElem.options == null)
					return;

				var currentvalue = SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.get('value');

				SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.simulate('keyup');

				for (i=0;i<selectElem.options.length;i++){

					if (selectElem.options[i].value==selectElem.value && document.activeElement != document.getElementById('{/literal}{$fields.priority.name}-input{literal}'))
						SUGAR.AutoComplete.{/literal}{$ac_key}{literal}.inputNode.set('value',selectElem.options[i].innerHTML);
				}
			}

            YAHOO.util.Event.onAvailable("{/literal}{$fields.priority.name}{literal}", syncFromHiddenToWidget);
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
			var selectElem = document.getElementById("{/literal}{$fields.priority.name}{literal}");
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



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PERCENT_COMPLETE' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="percent_complete" colspan='3' >
{counter name="panelFieldCount"  print=false}
<input type="text" name="{$fields.percent_complete.name}" id="{$fields.percent_complete.name}" size="30" value="{$fields.percent_complete.value}" title="" tabindex="0" onChange="update_status(this.value);" /></tr>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_MILESTONE_FLAG' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="bool" field="milestone_flag" colspan='3' >
{counter name="panelFieldCount" print=false}

{if strval($fields.milestone_flag.value) == "1" || strval($fields.milestone_flag.value) == "yes" || strval($fields.milestone_flag.value) == "on"} 
{assign var="checked" value='checked="checked"'}
{else}
{assign var="checked" value=""}
{/if}
<input type="hidden" name="{$fields.milestone_flag.name}" value="0"> 
<input type="checkbox" id="{$fields.milestone_flag.name}" 
name="{$fields.milestone_flag.name}" 
value="1" title='' tabindex="" {$checked} >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_PROJECT_NAME' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="project_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.project_name.name}" class="sqsEnabled" tabindex="" id="{$fields.project_name.name}" size="" value="{$fields.project_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.project_name.id_name}" 
id="{$fields.project_name.id_name}" 
value="{$fields.project_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.project_name.name}" id="btn_{$fields.project_name.name}" tabindex="" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.project_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"form_SubpanelQuickCreate_ProjectTask","field_to_name_array":{"id":"project_id","name":"project_name"}}{/literal}, 
"single", 
true
);' ><img src="{sugar_getimagepath file="id-ff-select.png"}"></button><button type="button" name="btn_clr_{$fields.project_name.name}" id="btn_clr_{$fields.project_name.name}" tabindex="" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.project_name.name}', '{$fields.project_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><img src="{sugar_getimagepath file="id-ff-clear.png"}"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.project_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_TASK_NUMBER' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="task_number"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.task_number.value) <= 0}
{assign var="value" value=$fields.task_number.default_value }
{else}
{assign var="value" value=$fields.task_number.value }
{/if}  
<input type='text' name='{$fields.task_number.name}' 
id='{$fields.task_number.name}' size='30'  value='{sugar_number_format precision=0 var=$value}' title='' tabindex=''    >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_ORDER_NUMBER' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="order_number"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.order_number.value) <= 0}
{assign var="value" value=$fields.order_number.default_value }
{else}
{assign var="value" value=$fields.order_number.value }
{/if}  
<input type='text' name='{$fields.order_number.name}' 
id='{$fields.order_number.name}' size='30'  value='{sugar_number_format precision=0 var=$value}' title='' tabindex=''    >
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_ESTIMATED_EFFORT' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="estimated_effort"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.estimated_effort.value) <= 0}
{assign var="value" value=$fields.estimated_effort.default_value }
{else}
{assign var="value" value=$fields.estimated_effort.value }
{/if}  
<input type='text' name='{$fields.estimated_effort.name}' 
id='{$fields.estimated_effort.name}' size='30'  value='{sugar_number_format precision=0 var=$value}' title='' tabindex=''    >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_UTILIZATION' module='ProjectTask'}{/capture}
{$label|strip_semicolon}:

</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="utilization"  >
{counter name="panelFieldCount" print=false}
<span id='utilization_span'>
{$fields.utilization.value}</span>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label">

{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='ProjectTask'}{/capture}
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
rows="4"
cols="60"
title='' tabindex="" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">



<div class="col-xs-12 col-sm-8 edit-view-field " type="int" field="duration" colspan='3' >
{counter name="panelFieldCount"  print=false}
<input type="hidden" name="duration" id="projectTask_duration" value="0" />
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-12 edit-view-row-item">



<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="duration_unit" colspan='3' >
{counter name="panelFieldCount"  print=false}
<input type="hidden" name="duration_unit" id="projectTask_durationUnit" value="Days" />
</div>

<!-- [/hide] -->
</div>
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
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}"  class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ProjectTask'); disableOnUnloadEditView(); _form.action.value='Save';if(check_form('form_SubpanelQuickCreate_ProjectTask'))return SUGAR.subpanelUtils.inlineSave(_form.id, 'ProjectTask_subpanel_save_button');return false;" type="submit" name="ProjectTask_subpanel_save_button" id="ProjectTask_subpanel_save_button" value="{$APP.LBL_SAVE_BUTTON_LABEL}">{/if} 
<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" class="button" onclick="return SUGAR.subpanelUtils.cancelCreate($(this).attr('id'));return false;" type="submit" name="ProjectTask_subpanel_cancel_button" id="ProjectTask_subpanel_cancel_button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}"> 
<input title="{$APP.LBL_FULL_FORM_BUTTON_TITLE}" class="button" onclick="var _form = document.getElementById('form_SubpanelQuickCreate_ProjectTask'); disableOnUnloadEditView(_form); _form.return_action.value='DetailView'; _form.action.value='EditView'; if(typeof(_form.to_pdf)!='undefined') _form.to_pdf.value='0';" type="submit" name="ProjectTask_subpanel_full_form_button" id="ProjectTask_subpanel_full_form_button" value="{$APP.LBL_FULL_FORM_BUTTON_LABEL}"> <input type="hidden" name="full_form" value="full_form">
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=ProjectTask", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("form_SubpanelQuickCreate_ProjectTask",
    function () {ldelim} initEditView(document.forms.form_SubpanelQuickCreate_ProjectTask) {rdelim});
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
addForm('form_SubpanelQuickCreate_ProjectTask');addToValidate('form_SubpanelQuickCreate_ProjectTask', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'project_id', 'id', true,'{/literal}{sugar_translate label='LBL_PROJECT_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'project_task_id', 'int', false,'{/literal}{sugar_translate label='LBL_PROJECT_TASK_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'status', 'enum', false,'{/literal}{sugar_translate label='LBL_STATUS' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'relationship_type', 'enum', false,'{/literal}{sugar_translate label='LBL_RELATIONSHIP_TYPE' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'predecessors', 'text', false,'{/literal}{sugar_translate label='LBL_PREDECESSORS' module='ProjectTask' for_js=true}{literal}' );
addToValidateDateBeforeAllowBlank('form_SubpanelQuickCreate_ProjectTask', 'date_start', 'date', false,'{/literal}{sugar_translate label='LBL_DATE_START' module='ProjectTask' for_js=true}{literal}', 'date_finish', 'true' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'time_start', 'int', false,'{/literal}{sugar_translate label='LBL_TIME_START' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'time_finish', 'int', false,'{/literal}{sugar_translate label='LBL_TIME_FINISH' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'date_finish', 'date', false,'{/literal}{sugar_translate label='LBL_DATE_FINISH' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'duration', 'int', true,'{/literal}{sugar_translate label='LBL_DURATION' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'duration_unit', 'text', false,'{/literal}{sugar_translate label='LBL_DURATION_UNIT' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'actual_duration', 'int', false,'{/literal}{sugar_translate label='LBL_ACTUAL_DURATION' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'percent_complete', 'int', false,'{/literal}{sugar_translate label='LBL_PERCENT_COMPLETE' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'date_due', 'date', false,'{/literal}{sugar_translate label='LBL_DATE_DUE' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'time_due', 'time', false,'{/literal}{sugar_translate label='LBL_TIME_DUE' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'parent_task_id', 'int', false,'{/literal}{sugar_translate label='LBL_PARENT_TASK_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'assigned_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_USER_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED_USER_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'priority', 'enum', false,'{/literal}{sugar_translate label='LBL_PRIORITY' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED_BY' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'milestone_flag', 'bool', false,'{/literal}{sugar_translate label='LBL_MILESTONE_FLAG' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'order_number', 'int', false,'{/literal}{sugar_translate label='LBL_ORDER_NUMBER' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'task_number', 'int', false,'{/literal}{sugar_translate label='LBL_TASK_NUMBER' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'estimated_effort', 'int', false,'{/literal}{sugar_translate label='LBL_ESTIMATED_EFFORT' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'actual_effort', 'int', false,'{/literal}{sugar_translate label='LBL_ACTUAL_EFFORT' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='ProjectTask' for_js=true}{literal}' );
addToValidateRange('form_SubpanelQuickCreate_ProjectTask', 'utilization', 'int', false, '{/literal}{sugar_translate label='LBL_UTILIZATION' module='ProjectTask' for_js=true}{literal}', 0, 100);
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'project_name', 'relate', false,'{/literal}{sugar_translate label='LBL_PARENT_NAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_USER_NAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'file_mime_type', 'varchar', false,'{/literal}{sugar_translate label='LBL_FILE_MIME_TYPE' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'file_url', 'function', false,'{/literal}{sugar_translate label='LBL_FILE_URL' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'filename', 'file', false,'{/literal}{sugar_translate label='LBL_FILENAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'projecttask_parent_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SUB_PROJECTTASK_NAME' module='ProjectTask' for_js=true}{literal}' );
addToValidate('form_SubpanelQuickCreate_ProjectTask', 'projecttask_parent_id', 'id', false,'{/literal}{sugar_translate label='LBL_SUB_PROJECTTASKS_ID' module='ProjectTask' for_js=true}{literal}' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_ProjectTask', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='ProjectTask' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='ProjectTask' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('form_SubpanelQuickCreate_ProjectTask', 'project_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='ProjectTask' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_PARENT_NAME' module='ProjectTask' for_js=true}{literal}', 'project_id' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['form_SubpanelQuickCreate_ProjectTask_assigned_user_name']={"form":"form_SubpanelQuickCreate_ProjectTask","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['form_SubpanelQuickCreate_ProjectTask_project_name']={"form":"form_SubpanelQuickCreate_ProjectTask","method":"query","modules":["Project"],"group":"or","field_list":["name","id"],"populate_list":["project_name","project_id"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
