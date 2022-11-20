<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- 헤더  -->
	<div id="Header">
		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="login"><a href="/member/memberList" data-attr='공통^헤더^로그인'><i class="fa-solid fa-wrench"></i> 매니저 님, 반갑습니다</a></li>
				<li class="cart"><a href="/codeGroup/codeGroupList" data-attr='공통^헤더^장바구니'>관리 홈<span id="cartToCnt"></span></a></li>
				<li class="cart"><a href="" data-attr='공통^헤더^로그아웃' title="로그아웃" type="button" id="btnLogout">로그아웃</a></li>
				<li class="cart"><a href="/item/access" data-attr='공통^헤더^홈' title="선택화면">처음으로</a></li>
			</ul>
		</div>
		
		<form autocomplete="off">
			<div class="header_inner">
	            <h1><a href="/item/itemListDmin"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
				<div class="search_box" id="w_search_box">
					<input type="hidden" name="chkButton" id="chkButton">		
					<input type="text" id="query" class="inp_placeholder">
					<button id="searchSubmit">검색</button>
					<div class="search_layer">
						<div class="layer_inner"></div>
					</div>
				</div>
				<ul class="mymenu_area">
					<li class="store ">
						<a href="#" class="mymenu_layer" title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
					</li>
					<li class="recent">
						<a href="javascript:;" class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
					</li>
				</ul>
			</div>
		</form>
	</div>

	<div id="Gnb" class="main gen1">
		<div id="gnbWrap">
			<a href="#" id="btnGnbOpen">카테고리</a>
			<!-- 전체 카테고리 레이어 -->
			<div class="layer_all_menu" id="gnbAllMenu">
				<ul class="all_menu_wrap">
					<li>
						<h2>뷰티</h2>
						<div class="sub_menu_box">
						</div>
					</li>
				</ul>
				<button id="btnGnbClose">전체 카테고리 창 닫기</button>
			</div>	
			<!--// 전체 카테고리 레이어 -->

			<ul class="gnb_menu_list">
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getHotdealList.do" 
					   data-attr="공통^GNB^오특"><span>오특</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getNewList.do" 
					   data-attr="공통^GNB^신상"><span>신상</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getBestList.do" 
					   data-attr="공통^GNB^랭킹"><span>랭킹</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="planshop/getSpcShopDetail.do?dispCatNo=500000200080001" 
					   data-attr="공통^GNB^프리미엄관"><span>프리미엄관</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getPlanShopList.do" 
					   data-attr="공통^GNB^기획전"><span>기획전</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getSaleList.do" 
					   data-attr="공통^GNB^세일"><span>세일</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="giftCardGuide/getGiftCardGuide.do" 
					   data-attr="공통^GNB^기프트카드"><span>기프트카드</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getMembership.do" 
					   data-attr="공통^GNB^멤버십/쿠폰"><span>멤버십/쿠폰</span>
					</a>
				</li>
				<li>
					<a href="#"
					   data-ref-linkUrl="main/getEventList.do" 
					   data-attr="공통^GNB^이벤트"><span>이벤트</span>
					</a>
				</li>
			</ul>
		</div>
	</div>