<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/layout/menu.jsp"></jsp:include>
	<link rel="stylesheet" href="css/style.css">
	<title>Insert title here</title>

</head>
<style>
</style>
<body>
	<div id="app" >
		<div class="container">
	        <div class="table-list">
	            <table class="board_list">                   
	                <thead>
	                    <tr>            
	                        <th scope="col">No.</th>
	                        <th scope="col">제목</th>
	                        <th scope="col">아이디</th>
	                        <th scope="col">작성일</th>
	                        <th scope="col">조회수</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <tr v-for="(item, index) in list" > 
                            <td>{{item.boardNo}}</td>
                            <td>{{item.title}}</td>
                            <td>{{item.id}}</td>     
                            <td>{{item.cdatetime}}</td>     
                            <td>{{item.cnt}}</td>     
                        </tr>                                       
	                </tbody>                   
	            </table>
	            <div>
	            </div>
	        </div>
        </div>
        <div>
        	
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
var app = new Vue({ 
    el: '#app',
    data: {
    	list : []
    }   
    , methods: {
        fnGetList : function(){
            var self = this;
            var nparmap = {};
            $.ajax({
                url:"/bbs/list.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) {   
                	console.log(data);
	                self.list = data.list;
                }
            }); 
        }  	
    	
    }   
    , created: function () {
		this.fnGetList();    
	}
});
</script>