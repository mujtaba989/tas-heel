<?php
/* Smarty version 3.1.30, created on 2017-03-29 16:21:39
  from "C:\xampp\htdocs\follow-up\themes\default\subtemplates\user_profile.inc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_58dba6d3b1bd24_34663736',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0649f28507b6d76fda472511e9518f6ba62fc990' => 
    array (
      0 => 'C:\\xampp\\htdocs\\follow-up\\themes\\default\\subtemplates\\user_profile.inc.tpl',
      1 => 1489283858,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58dba6d3b1bd24_34663736 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_replace')) require_once 'C:\\xampp\\htdocs\\follow-up\\modules\\smarty\\plugins\\modifier.replace.php';
if (!is_callable('smarty_modifier_date_format')) require_once 'C:\\xampp\\htdocs\\follow-up\\modules\\smarty\\plugins\\modifier.date_format.php';
$_smarty_tpl->smarty->ext->configLoad->_loadConfigFile($_smarty_tpl, $_smarty_tpl->tpl_vars['language_file']->value, "user_show", 0);
?>

<?php if ($_smarty_tpl->tpl_vars['user_name']->value) {?>
<table class="normaltab wide" border="0" cellpadding="5" cellspacing="1">
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_name');?>
</strong></p></td>
<td class="d"><p class="userdata"><strong><?php echo $_smarty_tpl->tpl_vars['user_name']->value;?>
</strong><?php if ($_smarty_tpl->tpl_vars['gender']->value == 1) {?> <img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/male.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'male');?>
" width="16" height="16" /><?php } elseif ($_smarty_tpl->tpl_vars['gender']->value == 2) {?> <img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/female.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'female');?>
" width="16" height="16" /><?php }?> <span class="xsmall"><?php if ($_smarty_tpl->tpl_vars['p_user_type']->value == 2) {?>(<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'admin');?>
)<?php } elseif ($_smarty_tpl->tpl_vars['p_user_type']->value == 1) {?>(<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'mod');?>
)<?php } else { ?><!--(<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user');?>
)--><?php }?></span><?php if ($_smarty_tpl->tpl_vars['user_is_locked']->value) {?> <span class="small user-locked">(<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_locked');?>
)</span><?php }?></p></td>
</tr>
<?php if ($_smarty_tpl->tpl_vars['avatar']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_avatar');?>
</strong></p></td>
<td class="d"><p class="userdata"><img src="<?php echo $_smarty_tpl->tpl_vars['avatar']->value['image'];?>
" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'avatar_img_alt');?>
" width="<?php echo $_smarty_tpl->tpl_vars['avatar']->value['width'];?>
" height="<?php echo $_smarty_tpl->tpl_vars['avatar']->value['height'];?>
" /></p></td>
</tr>
<?php }
if ($_smarty_tpl->tpl_vars['user_hp']->value || $_smarty_tpl->tpl_vars['user_email']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_hp_email');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php if ($_smarty_tpl->tpl_vars['user_hp']->value == '' && $_smarty_tpl->tpl_vars['user_email']->value == '') {?>-<?php }
if ($_smarty_tpl->tpl_vars['user_hp']->value != '') {?><a href="<?php echo $_smarty_tpl->tpl_vars['user_hp']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['user_hp']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/homepage.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'homepage');?>
" width="13" height="13" /></a> &nbsp;<?php }
if ($_smarty_tpl->tpl_vars['user_email']->value) {?><a href="index.php?mode=contact&amp;user_id=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
" title="<?php echo smarty_modifier_replace($_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'mailto_user'),"[user]",$_smarty_tpl->tpl_vars['user_name']->value);?>
" rel="nofollow"><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/email.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'email');?>
" width="13" height="10" /></a><?php }?></p></td>
</tr>
<?php }
if ($_smarty_tpl->tpl_vars['user_real_name']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_real_name');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['user_real_name']->value)===null||$tmp==='' ? '-' : $tmp);?>
</p></td>
</tr>
<?php }
if ($_smarty_tpl->tpl_vars['birthdate']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'age_birthday');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['years']->value;?>
 / <?php echo $_smarty_tpl->tpl_vars['birthdate']->value['year'];?>
-<?php echo $_smarty_tpl->tpl_vars['birthdate']->value['month'];?>
-<?php echo $_smarty_tpl->tpl_vars['birthdate']->value['day'];?>
</p></td>
</tr>
<?php }
if ($_smarty_tpl->tpl_vars['user_location']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_location');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['user_location']->value)===null||$tmp==='' ? '-' : $tmp);?>
</p></td>
</tr>
<?php }?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_registered');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['user_registered']->value;?>
</p></td>
</tr>
<?php if ($_smarty_tpl->tpl_vars['user_last_login']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_last_login');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['user_last_login']->value)===null||$tmp==='' ? '-' : $tmp);?>
</p></td>
</tr>
<?php }?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_logins');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['logins']->value;?>
</p></td>
</tr>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'logins_per_day');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['logins_per_day']->value;?>
</p></td>
</tr>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_postings');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['postings']->value;?>
 (<?php echo $_smarty_tpl->tpl_vars['postings_percent']->value;?>
%)<?php if ($_smarty_tpl->tpl_vars['postings']->value > 0) {?> &nbsp;<span class="small">[ <a href="index.php?mode=user&amp;action=show_posts&amp;id=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'show_postings_link');?>
</a> ]</span><?php }?></p></td>
</tr>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'postings_per_day');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php echo $_smarty_tpl->tpl_vars['postings_per_day']->value;?>
</p></td>
</tr>
<?php if ($_smarty_tpl->tpl_vars['last_posting_subject']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'last_posting');?>
</strong></p></td>
<td class="d"><p class="userdata"><?php if ($_smarty_tpl->tpl_vars['last_posting_subject']->value) {
echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['last_posting_time']->value,$_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'time_format'));?>
: <a id="user-last-posting" href="index.php?mode=entry&amp;id=<?php echo $_smarty_tpl->tpl_vars['last_posting_id']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['last_posting_subject']->value;?>
</a><?php } else { ?>-<?php }?></p></td>
</tr>
<?php }
if ($_smarty_tpl->tpl_vars['profile']->value) {?>
<tr>
<td class="c"><p class="userdata"><strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_profile');?>
</strong></p></td>
<td class="d"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['profile']->value)===null||$tmp==='' ? '<p>-</p>' : $tmp);?>
</td>
</tr>
<?php }?>
</table>

<?php if ($_smarty_tpl->tpl_vars['mod']->value || $_smarty_tpl->tpl_vars['admin']->value) {?>
<ul class="adminmenu">
<?php if ($_smarty_tpl->tpl_vars['admin']->value) {
if ($_smarty_tpl->tpl_vars['postings']->value) {?><li><a href="index.php?mode=admin&amp;user_delete_all_entries=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/delete_entries.png" alt="" width="16" height="16" /><span><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_delete_all_entries');?>
</span></a></li><?php }
}
if ($_smarty_tpl->tpl_vars['p_user_type']->value == 0) {?><li><a href="index.php?mode=user&amp;user_lock=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
"><?php if ($_smarty_tpl->tpl_vars['user_is_locked']->value) {?><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/unlock_user.png" alt="" width="16" height="16" /><span><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_unlock_account');?>
</span></a><?php } else { ?><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/lock_user.png" alt="" width="16" height="16" /><span><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_lock_account');?>
</span></a><?php }?></li><?php }
if ($_smarty_tpl->tpl_vars['admin']->value) {?><li><a href="index.php?mode=admin&amp;edit_user=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/edit_user.png" alt="" width="16" height="16" /><span><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_edit_account');?>
</span></a></li><?php }
if ($_smarty_tpl->tpl_vars['admin']->value) {?><li><a href="index.php?mode=admin&amp;delete_user=<?php echo $_smarty_tpl->tpl_vars['p_user_id']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/delete_user.png" alt="" width="16" height="16" /><span><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_delete_account');?>
</span></a></li><?php }?>
</ul>
<?php }?>

<?php } else { ?>
<p class="caution"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'user_account_doesnt_exist');?>
</p>
<?php }
}
}
