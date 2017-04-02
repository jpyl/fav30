loadFavInfo('-0');

loadTagInfo();

$("#listFavorites").panel({
	fit : true,
	title : " ",
	border : false,
});

$("#addFav").dialog({
	//height : 260,
	width : 380,
	title : '',
	border : false,
	//modal : true,
	onOpen : function(){
		$(".panel").css("z-index", "999");
		$(".window-shadow").css("z-index", "998");
	}
});

$("#addFavForm").form({
	url:"fav",
	success:function(data){
		addWinClose(); //关闭添加书签窗口
		//添加书签结果信息
		$.messager.show({
			title : '添加书签信息',
			msg : '添加书签' + (data ? "成功..." : "失败!!!"),
			showType : 'show',
			style : {
				top : document.body.scrollTop + document.documentElement.scrollTop,
			}
		});
		//重新加载书签信息
		loadTagInfo();
	}
});

$("#addFav").dialog("close", true);

$("#labels_table td").hover(selecrLabel);

function loadTagInfo() {
	//以异步的方式取到所有书签的信息
	$.get("tag", function(data) {
		var tagTagetStr = "";
		for (var i = 0; i < data.length; i++) {
			tagTagetStr += '<tr><td><a href="javascript:void(0)" onClick="loadFavInfo(\''+ data[i].tname +'\')">' + data[i].tname + '(' + data[i].tcount + ')' + '</a></td></tr>';
		}
		$("#labelContent")[0].innerHTML = tagTagetStr;
		$("#labels_table td").hover(selecrLabel);
	}, "json");
}

function add() {
	UE.getEditor('fdesc'); //<textarea>转变成富文本编辑工具
	$("#addFav").dialog("open", true);
}

function addWinClose() {
	$("#addFav").dialog("close", true);
	return false;
}

function selecrLabel() {
	$("#labels_table td").removeClass("selected_label");
	$(this).addClass("selected_label");
}

function addFavorite() {
	$("#addFavForm").submit();
	return false;
}

//加载网站信息内容
function loadFavInfo(tagName) {
	//以异步的方式取到所有书签的信息
	$.get("fav/" + tagName, function(data) {
		var favStr = "";
		for (var i = 0; i < data.length; i++) {
			favStr += '<div style="padding: 6px 10px;">';
			favStr += '<div><a href="' + data[i].furl + '" style="color: blue; font-size: 18px;" target="_blank">' + data[i].flabel + '</a></div>';
			favStr += '<div style="color: black; font-size: 16px;">' + data[i].fdesc + '</div>';
			favStr += '<div style="color: green; font-size: 14px;">' + data[i].furl + '</div></div>';
		}
		
		$("#listFavorites").html(favStr);
	}, "json");
}

