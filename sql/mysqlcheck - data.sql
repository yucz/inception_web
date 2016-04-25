INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('1', '系统管理', '1', '0', 'webapp.views', 'Home', '', 'systems', 'systemsurl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('2', '用户列表', '0', '1', 'webapp.view.admin', 'user.ListUser', '', 'systems/user/list', 'listuserurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('3', '新建用户', '0', '1', 'webapp.view.admin', 'user.AddUser', '', 'systems/user/add', 'adduserurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('4', '编辑用户', '0', '1', 'webapp.view.admin', 'user.EditUser', '', 'systems/user/edit/(?P<ID>\\d+)', 'edituserurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('5', '删除用户', '0', '1', 'webapp.view.admin', 'user.DeleteUser', '', 'systems/user/delete/(?P<ID>\\d+)', 'deleteuserurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('6', '角色列表', '0', '1', 'webapp.view.admin', 'role.ListRole', '', 'systems/role/list', 'listroleurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('7', '新建角色', '0', '1', 'webapp.view.admin', 'role.AddRole', '', 'systems/role/add', 'addroleurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('8', '编辑角色', '0', '1', 'webapp.view.admin', 'role.EditRole', '', 'systems/role/edit/(?P<ID>\\d+)', 'editroleurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('9', '删除角色', '0', '1', 'webapp.view.admin', 'role.DeleteRole', '', 'systems/role/delete/(?P<ID>\\d+)', 'deleteroleurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('10', '权限列表', '0', '1', 'webapp.view.admin', 'permission.ListPermission', '', 'systems/permission/list', 'listpermissionurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('11', '新建权限', '0', '1', 'webapp.view.admin', 'permission.AddPermission', '', 'systems/permission/add', 'addpermissionurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('12', '编辑权限', '0', '1', 'webapp.view.admin', 'permission.EditPermission', '', 'systems/permission/edit/(?P<ID>\\d+)', 'editpermissionurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('13', '删除权限', '0', '1', 'webapp.view.admin', 'permission.DeletePermission', '', 'systems/permission/delete/(?P<ID>\\d+)', 'deletepermissionurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('14', '菜单列表', '0', '1', 'webapp.view.admin', 'menu.ListMenu', '', 'systems/menu/list', 'listmenuurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('15', '新建菜单', '0', '1', 'webapp.view.admin', 'menu.AddMenu', '', 'systems/menu/add', 'addmenuurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('16', '编辑菜单', '0', '1', 'webapp.view.admin', 'menu.EditMenu', '', 'systems/menu/edit/(?P<ID>\\d+)', 'editmenuurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('17', '删除菜单', '0', '1', 'webapp.view.admin', 'menu.DeleteMenu', '', 'systems/menu/delete/(?P<ID>\\d+)', 'deletemenuurl', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('18', 'mysql发布', '1', '1', 'webapp.views', 'Mysqlfab', '', 'mysqlfab', 'mysqlfaburl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('19', '发布管理', '0', '18', 'webapp.view.mysqlfab', 'mysqlfab.ListMysqlFab', 'mysqlfab', 'mysqlfab/mysqlfab/list', 'listmysqlfaburl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('20', '新建发布', '0', '18', 'webapp.view.mysqlfab', 'mysqlfab.AddMysqlFab', 'mysqlfab', 'mysqlfab/mysqlfab/add', 'addmysqlfaburl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('21', '编辑发布', '0', '18', 'webapp.view.mysqlfab', 'mysqlfab.EditMysqlFab', 'mysqlfab', 'mysqlfab/mysqlfab/edit/(?P<ID>\\d+)', 'editmysqlfaburl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('22', '删除发布', '0', '18', 'webapp.view.mysqlfab', 'mysqlfab.DeleteMysqlFab', 'mysqlfab', 'mysqlfab/mysqlfab/delete/(?P<ID>\\d+)', 'deletemysqlfaburl', '1', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('23', '一级评审', '0', '18', 'webapp.view.mysqlfab', 'mysqlcheck.Check1', 'mysqlcheck', 'mysqlfab/mysqlcheck/check1/(?P<ID>\\d+)', 'mysqlcheck1url', '0', '0');
INSERT INTO `mysqlcheck`.`superdba_menu` (`id`, `text`, `is_root`, `parent_id`, `namespace`, `viewname`, `kwargs`, `url`, `url_name`, `is_active`, `is_genweb`) VALUES ('24', '二级评审', '0', '18', 'webapp.view.mysqlfab', 'mysqlcheck.Check2', 'mysqlcheck', 'mysqlfab/mysqlcheck/check2/(?P<ID>\\d+)', 'mysqlcheck2url', '0', '0');



INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('1', '系统管理', '/superdba/systems/');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('2', '用户列表', '/superdba/systems/user/list');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('3', '新建用户', '/superdba/systems/user/add');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('4', '编辑用户', '/superdba/systems/user/edit/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('5', '删除用户', '/superdba/systems/user/delete/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('6', '角色列表', '/superdba/systems/role/list');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('7', '新建角色', '/superdba/systems/role/add');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('8', '编辑角色', '/superdba/systems/role/edit/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('9', '删除角色', '/superdba/systems/role/delete/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('10', '权限列表', '/superdba/systems/permission/list');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('11', '新建权限', '/superdba/systems/permission/add');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('12', '编辑权限', '/superdba/systems/permission/edit/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('13', '删除权限', '/superdba/systems/permission/delete/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('14', '菜单列表', '/superdba/systems/menu/list');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('15', '新建菜单', '/superdba/systems/menu/add');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('16', '编辑菜单', '/superdba/systems/menu/edit/(?P<ID>\\d+)');
INSERT INTO `mysqlcheck`.`superdba_permissionlist` (`id`, `name`, `url`) VALUES ('17', '删除菜单', '/superdba/systems/menu/delete/(?P<ID>\\d+)');



INSERT INTO `mysqlcheck`.`superdba_rolelist` (`id`, `name`) VALUES ('1', '用户管理（所有）');
INSERT INTO `mysqlcheck`.`superdba_rolelist` (`id`, `name`) VALUES ('2', '系统管理');
INSERT INTO `mysqlcheck`.`superdba_rolelist` (`id`, `name`) VALUES ('3', '用户管理（查看）');

INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('30', '1', '1');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('31', '1', '2');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('32', '1', '3');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('33', '1', '4');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('34', '1', '5');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('8', '2', '1');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('9', '2', '2');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('10', '2', '3');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('11', '2', '4');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('12', '2', '5');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('13', '2', '6');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('14', '2', '7');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('15', '2', '8');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('16', '2', '9');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('17', '2', '10');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('18', '2', '11');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('19', '2', '12');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('20', '2', '13');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('21', '2', '14');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('22', '2', '15');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('23', '2', '16');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('24', '2', '17');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('38', '3', '1');
INSERT INTO `mysqlcheck`.`superdba_rolelist_permission` (`id`, `rolelist_id`, `permissionlist_id`) VALUES ('39', '3', '2');


INSERT INTO `mysqlcheck`.`superdba_user` (`id`, `password`, `last_login`, `username`, `email`, `is_active`, `is_superuser`, `nickname`, `sex`, `role_id`) VALUES ('1', 'pbkdf2_sha256$20000$LMY1WvSKLXA3$i6U36wE3qogZEJzYlNDh5CxxrA98gYQlT5sxkLIVPM4=', '2016-04-22 01:58:34', 'admin', 'admin@123.com', '1', '1', '方', '男', '2');
INSERT INTO `mysqlcheck`.`superdba_user` (`id`, `password`, `last_login`, `username`, `email`, `is_active`, `is_superuser`, `nickname`, `sex`, `role_id`) VALUES ('2', 'pbkdf2_sha256$20000$cxjb7GDC3YzK$cUe4eSbSISjkKK8+reD6cC3qqT8vVCejErztGKBOMZM=', '2016-01-08 11:10:30', 'yu', 'yu@123.com', '1', '0', 'yyu', '男', '3');
INSERT INTO `mysqlcheck`.`superdba_user` (`id`, `password`, `last_login`, `username`, `email`, `is_active`, `is_superuser`, `nickname`, `sex`, `role_id`) VALUES ('4', 'pbkdf2_sha256$20000$vkjqrFBsfdVb$VbeV/N6LavUFt/n2TqlxvKj2jhLfJGEwT5zWnfQ/xII=', '2016-01-08 07:58:47', 'yucz', 'yu@123.com', '1', '0', 'yyu', '男', '1');


INSERT INTO `mysqlcheck`.`superdba_usermenu` (`id`, `menus_show`, `menus_checked`, `user_id`) VALUES ('1', '1,2,3,4', '1,2,3,4', '1');



