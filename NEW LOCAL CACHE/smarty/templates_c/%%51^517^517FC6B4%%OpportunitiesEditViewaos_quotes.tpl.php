<?php /* Smarty version 2.6.29, created on 2017-08-01 21:41:02
         compiled from cache/modules/AOW_WorkFlow/OpportunitiesEditViewaos_quotes.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_translate', 'cache/modules/AOW_WorkFlow/OpportunitiesEditViewaos_quotes.tpl', 7, false),array('function', 'sugar_getimagepath', 'cache/modules/AOW_WorkFlow/OpportunitiesEditViewaos_quotes.tpl', 18, false),)), $this); ?>

<input type="text" name="<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" class="sqsEnabled" tabindex="1" id="<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" size="" value="<?php echo $this->_tpl_vars['fields']['aos_quotes']['value']; ?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $this->_tpl_vars['fields']['aos_quotes']['id_name']; ?>
" 
	id="<?php echo $this->_tpl_vars['fields']['aos_quotes']['id_name']; ?>
" 
	value="<?php echo $this->_tpl_vars['fields']['aos_quotes_id']['value']; ?>
">
<span class="id-ff multiple">
<button type="button" name="btn_<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" id="btn_<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" tabindex="1" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_TITLE'), $this);?>
" class="button firstChild" value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_SELECT_BUTTON_LABEL'), $this);?>
"
onclick='open_popup(
    "<?php echo $this->_tpl_vars['fields']['aos_quotes']['module']; ?>
", 
	600, 
	400, 
	"", 
	true, 
	false, 
	<?php echo '{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":'; ?>
"<?php echo $this->_tpl_vars['fields']['aos_quotes']['id_name']; ?>
"<?php echo ',"name":'; ?>
"<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
"<?php echo '}}'; ?>
, 
	"single", 
	true
);' ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-select.png"), $this);?>
"></button><button type="button" name="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" id="btn_clr_<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
" tabindex="1" title="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_TITLE'), $this);?>
"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
', '<?php echo $this->_tpl_vars['fields']['aos_quotes']['id_name']; ?>
');"  value="<?php echo smarty_function_sugar_translate(array('label' => 'LBL_ACCESSKEY_CLEAR_RELATE_LABEL'), $this);?>
" ><img src="<?php echo smarty_function_sugar_getimagepath(array('file' => "id-ff-clear.png"), $this);?>
"></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $this->_tpl_vars['form_name']; ?>
_<?php echo $this->_tpl_vars['fields']['aos_quotes']['name']; ?>
']) != 'undefined'",
		enableQS
);
</script>