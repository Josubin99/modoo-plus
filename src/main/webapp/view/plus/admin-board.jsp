<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="modoo" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<!-- 파비콘 삽입 -->
<link rel="icon" href="../assets/img/favicon.png">
<title>보드매칭 &rsaquo; Admin &rsaquo; 글관리</title>

<!-- General CSS Files -->
<link rel="stylesheet" href="../assets/modules/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/modules/fontawesome/css/all.min.css">

<!-- CSS Libraries -->
<link rel="stylesheet" href="../assets/modules/jquery-selectric/selectric.css">

<!-- Template CSS -->
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/components.css">
<!-- Start GA -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-94034622-3');
</script>
<!-- /END GA -->
<link rel="stylesheet" href="../assets/css/admin-board.css">
<style>
.hidden {
	display: none;
}

.main-content {
	padding-left: 15%;
	padding-right: 15%;
	min-width: 40%;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'GmarketSansMedium';
}
</style>
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<!--  header -->
			<modoo:header />

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>글 관리</h1>
					</div>
					<div class="section-body">
						<h2 class="section-title">게시글 관리</h2>
						<div class="row">
							<!-- 상단바 cnt[] : 각 요소(모집완료[1], 모집중[0], 지난게임[2])의 갯수 배열 -->
							<div class="col-12">
								<div class="card mb-0">
									<div class="card-body">
										<ul class="nav nav-pills" id="navi">
											<li class="nav-item">
												<a href="#;" class="nav-link active" id="4" onclick="changeList('4'); return false;">
													전체 <span class="badge badge-white" id="allMeeting">0</span>
												</a>
											</li>
											<li class="nav-item ">
												<a href="#;" class="nav-link " id="0" onclick="changeList('0'); return false;">
													모집 중 <span class="badge badge-primary" id="Recruiting">0</span>
												</a>
											</li>
											<li class="nav-item">
												<a href="#;" class="nav-link" id="1" onclick="changeList('1'); return false;">
													모집 완료 <span class="badge badge-primary" id="RecruitingCom">0</span>
												</a>
											</li>
											<li class="nav-item">
												<a href="#;" class="nav-link" id="2" onclick="changeList('2'); return false;">
													지난 모임 <span class="badge badge-primary" id="lastMeeting">0</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- 글목록 (페이지네이션으로 10개씩 출력) bDatas : 매칭글(board) 전체 데이터 -->
						<div class="row mt-4">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>글 목록</h4>
									</div>
									<div class="card-body">
										<div class="clearfix mb-3"></div>

										<div class="table-responsive">
											<table class="table table-striped">
												<tr>
													<th width="5%" class="text-center pt-2">
														<div class="custom-checkbox custom-checkbox-table custom-control">
															<input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
															<label for="checkbox-all" class="custom-control-label">&nbsp;</label>
														</div>
													</th>
													<th width="30%">제목</th>
													<th width="12%">작성자</th>
													<th width="12%">모임날짜</th>
													<th width="13%">상태</th>
													<th width="13%">실행</th>
												</tr>
												<tbody id="html_list">
												</tbody>
											</table>
										</div>
										<!-- 페이지네이션 10개씩 -->
										<div class="float-right">
											<nav>
												<ul class="pagination" id="paging"></ul>
											</nav>
										</div>
										<!-- 선택 글 삭제 -->
										<div class="float-left">
											<button class="btn btn-primary" id="selectDel" onclick="del()">선택한 글 삭제하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
						<!-- footer -->
			<%@include file="../common/footerPlus.jsp" %>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script>
		// 단일 삭제
		function delBtn(num){
				if (confirm('정말 삭제하시겠습니까?')) {
					location.href = "boardDelete.do?bNum="+num;
					/* $.ajax({
						type : 'POST',
						url : 'boardDelete.do',
						traditional : true,
						data : {
							bNum : bNum
						},
						success : function(result) {
							if (result == 1) {
								// location.href + ' 선택자' : 경로와 선택자 사이에 공백 필수!
								//$('.section-body').load(location.href + ' .section-body > *');
							
							}
						}
					}); */
				}
		}

		// 선택 삭제
		function del() {
			console.log('삭제');
			var arbNum = new Array();

			$("input[name='chk']:checked").each(function() {
				var item = $(this).siblings().prop('id');
				console.log(item);
				arbNum.push(item);
			})

			console.log('arbNum: ' + arbNum);

			if (arbNum.length < 1) {
				alert("선택한 게시글이 없습니다.");
				return;
			} else {
				if (confirm("정말 삭제하시겠습니까?")) {
					$.ajax({
						type : 'POST',
						url : 'arBoardDelete.do',
						traditional : true,
						data : {
							arbNum : arbNum
						},
						success : function(result) {
							if (result == 1) {
								location.href = "adPlusMain.do";
								// location.href + ' 선택자' : 경로와 선택자 사이에 공백 필수!
								/* $('.section-body').load(location.href + ' .section-body > *');
								alert("삭제되었습니다."); */
							}
						}
					});
				}
			}
		}


		// 페이지네이션
		var json = '${jbDatas}';
		var origin = JSON.parse(json);
	   	var temp = JSON.parse(json);
	   	var setNumber = 0;
		
		var totalCount = temp.length;
		//총 페이지
		var totalPage = Math.ceil(totalCount / 10.0);
		
		document.addEventListener('DOMContentLoaded', () => {
			 if(totalCount==0){
	        	  emptyData();
	        	  document.getElementById("paging").replaceChildren();
	        	  return;
	          }
			 // 네비게이션 세팅
			 setNavi();
		    // 페이지네이션 세팅
		    setPageHtml();
		    // 데이터 세팅
		    setList();
		})

		// 상단 네비게이션 데이터 세팅
		function setNavi(){
			 let i = 0;
			 let j = 0;
			 let k = 0;
	    	  
			origin.forEach(function(e){
				 if(e.bAction == 0){
					 i++;
				 } else if(e.bAction == 1){
					 j++;
				 } else if(e.bAction == 2){
					 k++;
				 }
			 });
			 
			 document.getElementById("allMeeting").innerHTML = ((i+j+k) == 0 ? 0 : (i+j+k));
			 document.getElementById("Recruiting").innerHTML = (i == 0 ? 0 : i);
			 document.getElementById("RecruitingCom").innerHTML = (j == 0 ? 0 : j);
			 document.getElementById("lastMeeting").innerHTML = (k == 0 ? 0 : k);
		}
		
		function setPageHtml(){
		    let pageHtml =
		       `<li class="page-item">
		            <a href="#;" class="page-link" onClick="changePage('first');return false;">First</a>
		        </li>
		        <li class="page-item">
		            <a href="#" class="page-link" onClick="changePage('prev');return false;">Prev</a>
		        </li>
		        <li class="page-item active">
		            <a href="#;" class="page-link" onClick="changePage(1);return false;">1</a>
		        </li>`;
		        
		    for(let i = 2; i <= totalPage; i ++){
		        pageHtml += '<li class="page-item"> <a href="#;" class="page-link" onClick="changePage('+ i +');return false;">'+ i +'</a></li>';
		    }

		    pageHtml +=
		       `<li class="page-item">
		            <a href="#;" class="page-link" onClick="changePage('next');return false;">Next</a>
		        </li>
		        <li class="page-item">
		            <a href="#;" class="page-link" onClick="changePage('last');return false;">Last</a>
		        </li>`;

		    let pagingEl = document.getElementById("paging");
		    if (!pagingEl) {
		      // 만약 "paging" id를 가진 엘리먼트가 없으면 새로운 엘리먼트 생성
		      pagingEl = document.createElement("ul");
		      pagingEl.setAttribute("id", "paging");
		      // 페이지의 어느 위치에 넣을지 지정해야 함
		      document.querySelector("#page-content").appendChild(pagingEl);
		    }

		    pagingEl.innerHTML = pageHtml;

		}

		function setList(page){
		    // 페이지 당 표시 될 튜플 수
		    let pageCount = 10;
		    page = page == null ? 1 : page;

		    // 표시될 첫 게시글
		    let startPage = (page - 1) * pageCount + 1;
		    // 표시될 마지막 게시글
		    let endPage = startPage + pageCount - 1;
		    // if(마지막 게시글 > 총 게시글) 총 게시글을 마지막 게시글로
		    endPage = endPage > totalCount ? totalCount : endPage;

		    showList(startPage, endPage);
		    
		    // 변경된 페이지 표시
		    document.querySelectorAll("#paging li").forEach( (item) => {
		        let str = item.querySelector("#paging li a").innerText;
		        if(str.includes(page)) {
		            item.classList.add("active");
		        }else{
		            item.classList.remove("active");
		        }
		    });

		}
		
		// 날짜 포멧 변경 함수
		function dateFormat(date) {
			let dateFormat2 = date.getFullYear() +
				'-' + ( (date.getMonth()+1) < 9 ? "0" + (date.getMonth()+1) : (date.getMonth()+1) )+
				'-' + ( (date.getDate()) < 9 ? "0" + (date.getDate()) : (date.getDate()) );
			return dateFormat2;
		}
		
	      /**
	       * 해당 페이지 데이터 세팅
	       * @param startPage
	       * @param endPage
	       */
	      function showList(startPage, endPage){
	          let html = "";

	          for(let i = (startPage - 1) ; i < endPage; i++) {
	        	  let board = temp[i];
	        	  let toDay = dateFormat(new Date(board.bDate));	        	 
	        	  let status;
	        	    if (board.bAction == 0) {
	        	      status = '<div class="badge badge-warning btn-status">모집 중</div>';
	        	    } else if (board.bAction == 1) {
	        	      status = '<div class="badge badge-primary btn-status">모집 완료</div>';
	        	    } else if (board.bDate < new Date()) {
	        	      status = '<div class="badge badge-danger btn-status">지난 모임</div>';
	        	    }
	        	  
	              html += `<tr id="`+ board.bNum + `}">
								<td style="text-align: center;">
								<div class="custom-checkbox custom-control">
								<input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-`+ i + `" name="chk">
								<label for="checkbox-`+ i + `" class="custom-control-label"  id="`+ board.bNum + `">&nbsp;</label>
								</div>
								</td>
								<td class="bTitle" name="bTitle">`+ board.bTitle + `</td>
								<td>
								<div>`+ board.bMname + `</div>
								</td>
								<td class="bDate" name="bDate">` +  toDay + `</td>
								<td>`+ status + `</td>
								<td>
								<!-- 게시글로 이동 -->
								<a href="boardDetail.do?bNum=` + board.bNum + `" class="btn btn-icon btn-primary">
								<i class="fas fa-check"></i>
								</a>
								<!-- 게시글 삭제 -->
								<button class="btn btn-icon btn-danger" onclick="delBtn(` + board.bNum + `)">
								<i class="fas fa-times"></i>
								</button>
								</td>
								</tr>`;
	          }

	          document.getElementById("html_list").innerHTML = html;
	      }

		/**
		 * 페이지 클릭 이벤트
		 * @param page
		 * @returns
		 */
		function changePage(page){
			console.log("page ==> " + page);

		    // 현재 페이지
		    let nowPage = parseInt(document.querySelector("#paging .active a").innerText);
		    console.log("nowPage --> " + nowPage);

		    if(page === "first"){
		        page = "1";
		    }else if(page === "prev"){
		        page = (nowPage - 1) < 1 ? nowPage : (nowPage - 1);
		    }else if(page === "next"){
		        page = (nowPage + 1) > totalPage ? totalPage : (nowPage + 1);
		    }else if(page === "last"){
		        page = totalPage;
		    }

		    if(nowPage != page)
		        setList(page);
		}
		
		// 상단 바클릭 이벤트
		function changeList(num){
			setNumber = num;
		    // 현재 페이지
		    //let nowPage = document.querySelector("#navi .active a").innerText;
		    let nowPage = $("#navi .active").prop("id");
		    console.log("nowPage --> " + nowPage);

			if(nowPage != num){
				// 변경된 페이지 표시
			    document.querySelectorAll("#navi li").forEach( (item) => {
			        let str = item.querySelector("#navi li a").id;
			        
			        if(str.includes(num)) {
	                    item.querySelector("#navi li a").classList.add("active");
	                    item.querySelector("#navi li a span").classList.remove("badge-primary");
	                    item.querySelector("#navi li a span").classList.add("badge-white");
	                 }else{
	                    item.querySelector("#navi li a").classList.remove("active");
	                    item.querySelector("#navi li a span").classList.add("badge-primary");
	                    item.querySelector("#navi li a span").classList.remove("badge-white");
	                 }
			    });
			    }
			
			datasetting();
			
	        totalCount = temp.length;

	        if(totalCount==0){
	        	 emptyData();
	        	 document.getElementById("paging").replaceChildren();
	        	 return;
	         }
	        
	        //총 페이지
	        totalPage = Math.ceil(totalCount / 10.0);

	        // 네비게이션 세팅
	        setNavi();
	        // 페이지네이션 세팅
	        setPageHtml();
	       	// 데이터 세팅
	        setList();
		}
		
		function datasetting(){
			temp.splice(0);
	    	 let now = $("#navi .active").prop("id");
	         if(now == 4){
	        	 origin.forEach((i) => {
	        		 temp.push(i);
	            })
	         } else if(now == 0){
	        	 origin.forEach((i) => {
	               if(i.bAction == 0){
	            	   temp.push(i);
	               }
	            })
	         } else if(now == 1){
	        	 origin.forEach((i) => {
	               if(i.bAction == 1){
	        		 console.log(i.bAction);
	        		 temp.push(i);
	               }
	            })
	         } else if(now == 2){
	        	 origin.forEach((i) => {
	               if(i.bAction == 2){
	            	   temp.push(i);
	               }
	            })
	         }
	      }
		
		  function emptyData(){
	    	  let html = `<tr "text-center"><td colspan="6" style="height : 100px;"><div style="padding-top : 20px; text-align:center;">게시글이 없습니다.</div></td></tr>`;
	          document.getElementById("html_list").innerHTML = html;
	          document.getElementById("selectDel").classList.add("hidden");
	      }
	</script>

	<!-- General JS Scripts -->
	<script src="../assets/modules/jquery.min.js"></script>
	<script src="../assets/modules/popper.js"></script>
	<script src="../assets/modules/tooltip.js"></script>
	<script src="../assets/modules/bootstrap/js/bootstrap.min.js"></script>
	<script src="../assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
	<script src="../assets/modules/moment.min.js"></script>
	<script src="../assets/js/stisla.js"></script>

	<!-- JS Libraies -->
	<script src="../assets/modules/jquery-selectric/jquery.selectric.min.js"></script>

	<!-- Page Specific JS File -->
	<script src="../assets/js/page/features-posts.js"></script>

	<!-- Template JS File -->
	<script src="../assets/js/scripts.js"></script>
	<script src="../assets/js/custom.js"></script>
</body>

</html>