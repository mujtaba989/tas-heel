<?php
/* Smarty version 3.1.30, created on 2018-08-05 17:04:05
  from "/opt/lampp/htdocs/follow-up/themes/default/subtemplates/posting_manage_postings.inc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5b66f5c5c86a32_98262558',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '43009b47b4b845a64ef3f9f369eea7cbc325db64' => 
    array (
      0 => '/opt/lampp/htdocs/follow-up/themes/default/subtemplates/posting_manage_postings.inc.tpl',
      1 => 1489283858,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b66f5c5c86a32_98262558 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once '/opt/lampp/htdocs/follow-up/modules/smarty/plugins/modifier.replace.php';
$_smarty_tpl->smarty->ext->configLoad->_loadConfigFile($_smarty_tpl, $_smarty_tpl->tpl_vars['language_file']->value, "manage_postings", 0);
?>

<?php if ($_smarty_tpl->tpl_vars['no_authorisation']->value) {?>
<p class="caution"><?php echo $_smarty_tpl->smarty->ext->configload->_getConfigVariable($_smarty_tpl, $_smarty_tpl->tpl_vars['no_authorisation']->value);?>
</p>
<?php } else {
$_smarty_tpl->_assignInScope('input_days', '</label><input type="text" name="days" value="" size="5" />');
?>
<h1><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'manage_postings_hl');?>
</h1>
<form action="index.php" method="post" accept-charset="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'charset');?>
">
<fieldset class="manage-postings">
<legend><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/marked.png" width="11" height="11" alt="" /> <?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'mark_postings');?>
</legend>
<input type="hidden" name="mode" value="posting" />
<p><input id="mark_mode_1" type="radio" name="mark_mode" value="1" /><label for="mark_mode_1"><?php echo smarty_modifier_replace($_smarty_tpl->smarty->ext->configload->_getConfigVariable($_smarty_tpl, 'mark_old_threads'),"[days]",$_smarty_tpl->tpl_vars['input_days']->value);?>
<br />
<input id="mark_mode_2" type="radio" name="mark_mode" value="2" /><label for="mark_mode_2"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'mark_all_postings');?>
</label><br />
<input id="mark_mode_3" type="radio" name="mark_mode" value="3" /><label for="mark_mode_3"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'unmark_all_postings');?>
</label></p>
<p><input type="submit" name="mark_submit" value="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'submit_button_ok');?>
" /></p>
</fieldset>
</form>

<form action="index.php" method="post" accept-charset="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'charset');?>
">
<fieldset class="manage-postings">
<legend><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/locked.png" width="14" height="12" alt="" /> <?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'lock_postings');?>
</legend>
<input type="hidden" name="mode" value="posting" />
<p><input id="lock_mode_1" type="radio" name="lock_mode" value="1" /><label for="lock_mode_1"><?php echo smarty_modifier_replace($_smarty_tpl->smarty->ext->configload->_getConfigVariable($_smarty_tpl, 'lock_old_threads'),"[days]",$_smarty_tpl->tpl_vars['input_days']->value);?>
<br />
<input id="lock_mode_2" type="radio" name="lock_mode" value="2" /><label for="lock_mode_2"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'lock_all_postings');?>
</label><br />
<input id="lock_mode_3" type="radio" name="lock_mode" value="3" /><label for="lock_mode_3"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'unlock_all_postings');?>
</label></p>
<p><input type="submit" name="lock_submit" value="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'submit_button_ok');?>
" /></p>
</fieldset>
</form>
<?php }
}
}
