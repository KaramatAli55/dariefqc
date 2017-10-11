<?php /* Smarty version 2.6.29, created on 2017-08-14 21:24:48
         compiled from cache/modules/AOW_WorkFlow/CasesDetailViewcase_location_c.tpl */ ?>


<?php if (is_string ( $this->_tpl_vars['fields']['case_location_c']['options'] )): ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['case_location_c']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['case_location_c']['options']; ?>
">
<?php echo $this->_tpl_vars['fields']['case_location_c']['options']; ?>

<?php else: ?>
<input type="hidden" class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['case_location_c']['name']; ?>
" value="<?php echo $this->_tpl_vars['fields']['case_location_c']['value']; ?>
">
<?php echo $this->_tpl_vars['fields']['case_location_c']['options'][$this->_tpl_vars['fields']['case_location_c']['value']]; ?>

<?php endif; ?>