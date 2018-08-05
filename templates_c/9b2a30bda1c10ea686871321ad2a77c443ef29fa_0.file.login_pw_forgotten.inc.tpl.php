<?php
/* Smarty version 3.1.30, created on 2018-08-02 19:17:10
  from "/opt/lampp/htdocs/follow-up/themes/default/subtemplates/login_pw_forgotten.inc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5b632076900402_35870185',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9b2a30bda1c10ea686871321ad2a77c443ef29fa' => 
    array (
      0 => '/opt/lampp/htdocs/follow-up/themes/default/subtemplates/login_pw_forgotten.inc.tpl',
      1 => 1489283858,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b632076900402_35870185 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->configLoad->_loadConfigFile($_smarty_tpl, $_smarty_tpl->tpl_vars['language_file']->value, "pw_forgotten", 0);
?>

<p><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'pw_forgotten_exp');?>
</p>
<form action="index.php" method="post" accept-charset="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'charset');?>
">
<div>
<input type="hidden" name="mode" value="login" />
<p><label for="pwf_email" class="main"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'pwf_email');?>
</label><br />
<input id="pwf_email" type="text" name="pwf_email" size="30" /> <input type="submit" name="pwf_submit" value="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'submit_button_ok');?>
" /></p>
</div>
</form>
<?php }
}
