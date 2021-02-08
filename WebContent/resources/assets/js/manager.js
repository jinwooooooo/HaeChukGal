$(function(){
	$("#btn_write_gameInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#g_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#g_season").focus();
			return;
		}
		if( $("#g_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#g_leagueName").focus();
			return;
		}
		$("#gameinfo").submit();
	});

	$("#btn_delete_gameInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#g_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#g_season").focus();
			return;
		}
		if( $("#g_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#g_leagueName").focus();
			return;
		}
		$("#gameinfo").submit();
	});
	
	$("#btn_write_playerInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#p_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#p_season").focus();
			return;
		}
		if( $("#p_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#p_leagueName").focus();
			return;
		}
		$("#playerinfo").submit();
	});

	$("#btn_delete_playerInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#p_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#p_season").focus();
			return;
		}
		if( $("#p_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#p_leagueName").focus();
			return;
		}
		$("#playerinfo").submit();
	});
	
	$("#btn_write_teamInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#t_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#t_season").focus();
			return;
		}
		if( $("#t_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#t_leagueName").focus();
			return;
		}
		$("#teaminfo").submit();
	});

	$("#btn_delete_teamInfo").on('click', function(){
		// alert("btn_write click!!!");
		if( $("#t_season").val() == "" ) {
			alert("시즌 꼭 입력해주세요!");
			$("#t_season").focus();
			return;
		}
		if( $("#t_leagueName").val() == "" ) {
			alert("리그이름을 꼭 입력해주세요!");
			$("#t_leagueName").focus();
			return;
		}
		$("#teaminfo").submit();
	});

});
