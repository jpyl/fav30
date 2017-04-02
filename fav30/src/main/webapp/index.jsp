<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta charset="UTF-8">
<title>云端收藏夹</title>
<link rel="stylesheet" type="text/css" href="rel/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="rel/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="rel/css/index.css">
</head>
<body class="easyui-layout" style="width: 1024px; margin: 0px auto">
	<div data-options="region:'north', border:false" style="height: 70px">
		<div class="topTitle">云端收藏夹</div>
		<div class="addTag">
			<a href="#" onclick="add();">添加书签</a>
		</div>
	</div>
	<div data-options="region:'west',collapsible:false, border:false" title="书签整理"
		style="width: 180px;">
		<div style="height: 100%; border-right: 20px solid #EAF2FF; color: red; padding-left: 20px;">
			<table id="labels_table">
				<tr>
					<td class="selected_label"><a href="javascript:void(0)" onClick="loadFavInfo('-0')">全部</a>
					</td>
				</tr>
				<tr>
					<td><a href="javascript:void(0)" onClick="loadFavInfo('-1')">未分类</a></td>
				</tr>
				<tbody id="labelContent"></tbody>
				<tr>
					<td><a style="font-weight: bold;" href="fav.do?op=toCloud">云图</a></td>
				</tr>
			</table>
		</div>
	</div>
	<div data-options="region:'center', fit:true, border:false">
		<div id="listFavorites"></div>
	</div>

	<div id="addFav">
		<form method="post" id="addFavForm">
			<div class="topTitle">云端收藏夹</div>
			<table class="input_table">
				<tr>
					<td>名称:</td>
					<td><input name="flabel" size="40" placeholder='输入网站标签' /><br />
				</tr>
				<tr>
					<td>链接:</td>
					<td><input type="url" name="furl" size="40" placeholder='输入网站地址url' /><br />
				</tr>
				<tr>
					<td>书签:</td>
					<td><input name="ftags" size="40" placeholder='可以多个，用","隔开' /><br />
				</tr>
				<tr>
					<td>描述:</td>
					<td><textarea id="fdesc" name="fdesc" style="width:300px;" placeholder="输入网站描述信息"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<button onclick="return addWinClose();">&nbsp;&nbsp;取 消&nbsp;&nbsp;</button>&nbsp;&nbsp;
						<button onclick="return addFavorite()">&nbsp;&nbsp;提 交&nbsp;&nbsp;</button>&nbsp;
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="rel/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="rel/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="rel/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" charset="utf-8" src="rel/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="rel/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="rel/ueditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript" src="rel/js/index.js"></script>
</body>
</html>