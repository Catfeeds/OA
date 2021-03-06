<?php
define('IN_ADMIN',True);
require('include/common.php');
function UserAgent(){   
    $user_agent = ( !isset($_SERVER['HTTP_USER_AGENT'])) ? FALSE : $_SERVER['HTTP_USER_AGENT'];   
    return $user_agent;   
} 
//Mobile   
if ((preg_match("/(iphone|ipod|android)/i", strtolower(UserAgent()))) AND strstr(strtolower(UserAgent()), 'webkit')){   
    header('Location: m/login.php');   
    exit;   
}else if(trim(UserAgent()) == '' OR preg_match("/(nokia|sony|ericsson|mot|htc|samsung|sgh|lg|philips|lenovo|ucweb|opera mobi|windows mobile|blackberry)/i", strtolower(UserAgent()))){   
    header('Location: m/login.php');   
    exit;   
}
$do = getGP('do','G');
if ( check_submit('dosubmit') ) {
	
	$errmsg = array();
	initGP(array('username', 'password', 'vdcode','remember'), 'P');
	
	if ( strlen($username) < 3 || strlen($username) > 20 ) {
		$errmsg[] = '用户名长度必须在3-20字节之间。';
	} elseif ( !is_username($username) ) {
		$errmsg[] = '用户名中含有非法字符。';
	}
	
	if ( strlen($password) < 6 ) $errmsg[] = '密码长度不能小于6个字节。';
	if ( get_config('user','login_vdcode') ) {
		session_start();
		if ( strtolower($vdcode) != $_SESSION['vdcode'] ) $errmsg[] = '验证码不正确。';
		unset($_SESSION['vdcode']);
	}
	
	if (count($errmsg)) show_msg($errmsg, 'login.php');
	$flag = $_USER->login($username, $password, $remember);
	if ( $flag == 1) {
		goto_page('admin.php');
	} elseif ( $flag == -3 ) {
		show_msg('登录失败，你的帐号尚未通过审核。', 'login.php');
	} elseif ( $flag == -5 ) {
		show_msg('登录失败，你的IP错误。', 'login.php');
	} else {
		show_msg('登录失败，用户名或密码错误。', 'login.php');
	}

}

if ($do == "logout") {

	$_USER->logout();
	show_msg('你已经安全退出登录，现在转到首页...','./');

} else {

	if ( $_USER->id ) {
	goto_page('admin.php');

}
}
include_once template.'login.php';
?>