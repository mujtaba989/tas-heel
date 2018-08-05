<?php
/* Smarty version 3.1.30, created on 2017-09-19 18:37:56
  from "C:\xampp\htdocs\follow-up\themes\default\subtemplates\bookmark.inc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59c12bc4a1d556_22874432',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '87e1fa7f1d4093ca725372f024743c8c8fa2e119' => 
    array (
      0 => 'C:\\xampp\\htdocs\\follow-up\\themes\\default\\subtemplates\\bookmark.inc.tpl',
      1 => 1489283858,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59c12bc4a1d556_22874432 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_cycle')) require_once 'C:\\xampp\\htdocs\\follow-up\\modules\\smarty\\plugins\\function.cycle.php';
if (!is_callable('smarty_modifier_replace')) require_once 'C:\\xampp\\htdocs\\follow-up\\modules\\smarty\\plugins\\modifier.replace.php';
$_smarty_tpl->smarty->ext->configLoad->_loadConfigFile($_smarty_tpl, $_smarty_tpl->tpl_vars['language_file']->value, "bookmark", 0);
?>


<?php if ($_smarty_tpl->tpl_vars['action']->value == 'bookmark') {?>
	<?php if ($_smarty_tpl->tpl_vars['total_bookmarks']->value > 0) {?>
		<table id="sortable" class="normaltab" border="0" cellpadding="5" cellspacing="1">
			<thead>
				<tr>
					<th><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'bookmark_title');?>
</th>
					<th><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'bookmark_user_name');?>
</th>
					<th><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'bookmark_creation_time');?>
</th>
					<th><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'bookmark_posting_time');?>
</th>
					<th>&#160;</th>
				</tr>
			</thead>
			<tbody>
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['bookmarkdata']->value, 'row');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['row']->value) {
?>
					<?php smarty_function_cycle(array('values'=>"a,b",'assign'=>'c'),$_smarty_tpl);?>

					<tr id="id_<?php echo $_smarty_tpl->tpl_vars['row']->value['bid'];?>
" class="<?php echo $_smarty_tpl->tpl_vars['c']->value;?>
">
						<td><a href="index.php?id=<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['row']->value['subject'];?>
"><strong><?php echo $_smarty_tpl->tpl_vars['row']->value['subject'];?>
</strong></a></td>
						<td><?php if ($_smarty_tpl->tpl_vars['row']->value['user_id'] > 0) {?><a href="index.php?mode=user&amp;show_user=<?php echo $_smarty_tpl->tpl_vars['row']->value['user_id'];?>
" title="<?php echo smarty_modifier_replace($_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'show_userdata_linktitle'),"[user]",$_smarty_tpl->tpl_vars['row']->value['user_name']);?>
"><?php }?><strong><?php echo $_smarty_tpl->tpl_vars['row']->value['user_name'];?>
</strong><?php if ($_smarty_tpl->tpl_vars['row']->value['user_id'] > 0) {?></a><?php }?></td>
						<td><span class="small"><?php echo $_smarty_tpl->tpl_vars['row']->value['bookmark_time'];?>
</span></td>
						<td><span class="small"><?php echo $_smarty_tpl->tpl_vars['row']->value['posting_time'];?>
</span></td>
						<td><a href="index.php?mode=bookmarks&amp;edit_bookmark=<?php echo $_smarty_tpl->tpl_vars['row']->value['bid'];?>
"><img class="control" src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/edit.png" title="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'edit');?>
" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'edit');?>
" width="16" height="16" /></a> &nbsp; <a href="index.php?mode=bookmarks&amp;delete_bookmark=<?php echo $_smarty_tpl->tpl_vars['row']->value['bid'];?>
"><img class="control" src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/delete.png" title="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'delete');?>
" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'delete');?>
" width="16" height="16"/></a> &nbsp; <a href="index.php?mode=bookmarks&amp;move_up_bookmark=<?php echo $_smarty_tpl->tpl_vars['row']->value['bid'];?>
"><img class="control" src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/arrow_up.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'up');?>
" title="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'up');?>
" width="16" height="16" /></a>&nbsp;<a href="index.php?mode=bookmarks&amp;move_down_bookmark=<?php echo $_smarty_tpl->tpl_vars['row']->value['bid'];?>
"><img class="control" src="<?php echo $_smarty_tpl->tpl_vars['THEMES_DIR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['theme']->value;?>
/images/arrow_down.png" alt="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'down');?>
" title="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'down');?>
" width="16" height="16" /></a></td>
					</tr>
				<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

			</tbody>
		</table>
	<?php } else { ?>
		<p><em><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'no_bookmarks');?>
</em></p>
	<?php }?>
	
<?php } elseif ($_smarty_tpl->tpl_vars['action']->value == 'delete_bookmark') {?>
	<?php if ($_smarty_tpl->tpl_vars['bookmark']->value) {?>
		<p class="caution"><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'caution');?>
</p>
		<p><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'delete_bookmark_confirm');?>
</p>
		<p><strong><?php echo $_smarty_tpl->tpl_vars['bookmark']->value['subject'];?>
</strong></p>
		<form action="index.php" method="post" accept-charset="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'charset');?>
">
			<div>
				<input type="hidden" name="mode" value="bookmarks" />
				<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['bookmark']->value['id'];?>
" />
				<input type="submit" name="delete_bookmark_submit" value="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'delete_bookmark_submit');?>
" />
			</div>
		</form>
	<?php } else { ?>
		<p><em><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'no_bookmarks');?>
</em></p>
	<?php }?>
	
<?php } elseif ($_smarty_tpl->tpl_vars['action']->value == 'edit_bookmark') {?>
	<?php if ($_smarty_tpl->tpl_vars['bookmark']->value) {?>
		<form action="index.php" method="post" class="normalform" accept-charset="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'charset');?>
">
			<div>
				<input type="hidden" name="mode" value="bookmarks" />
				<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['bookmark']->value['id'];?>
" />
				<strong><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'edit_bookmark');?>
</strong><br />
				<input type="text" name="bookmark" value="<?php echo $_smarty_tpl->tpl_vars['bookmark']->value['title'];?>
" maxlength="255" size="25" /><br />
				<input type="submit" name="edit_bookmark_submit" value="<?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'submit_button_ok');?>
" />
			</div>
		</form>
	<?php } else { ?>
		<p><em><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'no_bookmarks');?>
</em></p>
	<?php }
} else { ?>
	<p><em><?php echo $_smarty_tpl->smarty->ext->configLoad->_getConfigVariable($_smarty_tpl, 'no_bookmarks');?>
</em></p>
<?php }
}
}
