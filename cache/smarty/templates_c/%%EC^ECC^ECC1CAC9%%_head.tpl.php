<?php /* Smarty version 2.6.29, created on 2017-10-12 12:54:41
         compiled from themes/Suite7/tpls/_head.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'sugar_getimagepath', 'themes/Suite7/tpls/_head.tpl', 55, false),array('function', 'sugar_getjspath', 'themes/Suite7/tpls/_head.tpl', 69, false),)), $this); ?>
<!doctype html>
<html <?php echo $this->_tpl_vars['langHeader']; ?>
>
<head>
    <link rel="SHORTCUT ICON" href="<?php echo $this->_tpl_vars['FAVICON_URL']; ?>
">
    <meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->_tpl_vars['APP']['LBL_CHARSET']; ?>
">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <title><?php echo $this->_tpl_vars['SYSTEM_NAME']; ?>
</title>
    <?php echo $this->_tpl_vars['SUGAR_JS']; ?>

    <?php echo '
    <script type="text/javascript">
        <!--
        SUGAR.themes.theme_name      = \''; ?>
<?php echo $this->_tpl_vars['THEME']; ?>
<?php echo '\';
        SUGAR.themes.theme_ie6compat = \''; ?>
<?php echo $this->_tpl_vars['THEME_IE6COMPAT']; ?>
<?php echo '\';
        SUGAR.themes.hide_image      = \''; ?>
<?php echo smarty_function_sugar_getimagepath(array('file' => "hide.gif"), $this);?>
<?php echo '\';
        SUGAR.themes.show_image      = \''; ?>
<?php echo smarty_function_sugar_getimagepath(array('file' => "show.gif"), $this);?>
<?php echo '\';
        SUGAR.themes.loading_image   = \''; ?>
<?php echo smarty_function_sugar_getimagepath(array('file' => "img_loading.gif"), $this);?>
<?php echo '\';
        SUGAR.themes.allThemes       = eval('; ?>
<?php echo $this->_tpl_vars['allThemes']; ?>
<?php echo ');
        if ( YAHOO.env.ua )
            UA = YAHOO.env.ua;
        -->
    </script>
    '; ?>

    <link rel="stylesheet" href="themes/Suite7/css/bootstrap.min.css">
    <?php echo $this->_tpl_vars['SUGAR_CSS']; ?>

    <link rel="stylesheet" href="themes/Suite7/css/fontello.css">
    <link rel="stylesheet" href="themes/Suite7/css/animation.css"><!--[if IE 7]><link rel="stylesheet" href="css/fontello-ie7.css"><![endif]-->
    <link rel="stylesheet" type="text/css" href="themes/Suite7/css/colourSelector.php">
    <script type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file' => "themes/Suite7/js/jscolor.js"), $this);?>
'></script>
    <script type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file' => "cache/include/javascript/sugar_field_grp.js"), $this);?>
'></script>
</head>