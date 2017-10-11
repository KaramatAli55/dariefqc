<?php /* Smarty version 2.6.29, created on 2017-08-14 21:24:48
         compiled from cache/modules/AOW_WorkFlow/CasesDetailViewcase_time_c.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_number_format', 'cache/modules/AOW_WorkFlow/CasesDetailViewcase_time_c.tpl', 3, false),)), $this); ?>

<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['case_time_c']['name']; ?>
">
<?php echo smarty_function_sugar_number_format(array('var' => $this->_tpl_vars['fields']['case_time_c']['value']), $this);?>

</span>