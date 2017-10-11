<?php /* Smarty version 2.6.29, created on 2017-08-14 21:24:48
         compiled from cache/modules/AOW_WorkFlow/CasesDetailViewcase_materials_c.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['case_materials_c']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['case_materials_c']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['case_materials_c']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['case_materials_c']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['case_materials_c']['value']; ?>
</span>