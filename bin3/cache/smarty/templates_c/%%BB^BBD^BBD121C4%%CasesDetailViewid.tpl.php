<?php /* Smarty version 2.6.29, created on 2017-08-14 21:24:48
         compiled from cache/modules/AOW_WorkFlow/CasesDetailViewid.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['id']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['id']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['id']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['id']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['id']['value']; ?>
</span>