<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
	<title>Home</title>
</head>
<style>
*{
padding:0;
margin:0;
}
.nav_container{
background-color:black;
color:white;
display:flex;
padding:5px;
justify-content:space-between;

font-size:13px;





}
body{
background-color:rgb(21, 107, 255);
}
.items{
list-style:none;
display:flex;
}
.item-list{
	display:flex;
	align-items: center;	
}
.opgg_logo{
margin: 12px 16px;
    width: 57px;
    height: 14px;
}
.opgg_logo img{
	width:100%;

}
.item-list{
	padding-left:10px;
	padding-right:10px;
	
}
.main_banner{
	text-align:center;
	margin-top:50px;
	margin-bottom:20px;
	
	
	
}
.user_search
{
	width:600px;
	margin:0 auto;
	
}
.search_title{
	color:white;
	font-weight:bold;
	text-align:center;
	font-size:50px;
	
	
}
.result_area{
	
	
	
	
}

.main_contents{
	width:1550px;
	background-color:white;
	border-radius:10px;
	margin-top:50px;
	
	padding-left:100px;
	padding-top:100px;
	
	margin:0 auto;
	
	

}
.result_area{
	display:flex;
	
	
}
.summoner_level{
	
	font-weight:bold;

}
.summoner_info{
	
}
.summoner{
	font-weight:bold;
	font-size:40px;
	
}
.Button_refresh{
 border: 1px solid #1a78ae;
    background: #1f8ecd;
    color: #f2f2f2;
    padding: 11px 14px 10px;
    border-radius: 2px;
    font-weight:bold;
    width:150px;
    text-align:center;
    cursor: pointer;
}
.image_rank img {
	width:20%;

}
.result_rank{
	margin-top:50px;
	
}
.left_rank_area{
	


		
	
	

}
.icon_area img {
 
 width:70%;

}
.icon_area{
	width:200px;
	
}
.rank_name{
	
	font-weight:bold;
	
}
.result_rank{

display:flex;
}
.gameInfo_table{
	display:flex;
}
.buttons_area{
	display:flex;
	align-items:center;
}
.button_items_champmastery{
	
	width:150px;
	height: 47px;
	line-height:47px;
	text-align:center;
	font-weight:bold;
	cursor:pointer;
	background-color:black;
	color:white;
	border-radius:2px;

	
}
.champmastery_items{
	margin-left:20px;
	
}


</style>
<body>
	<div class="main_wrap">
		<header class="nav_container">
			<div class="opgg_logo">
			<h1>  </h1>
			<img src="https://opgg-static.akamaized.net/images/gnb/svg/00-opgglogo.svg">
			</div>
			<nav class="nav_items">
				<ul class="items">
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-lol-white.svg"><p>League of Legends</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-pubg-gray.svg"><p>PUBG</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-overwatch-gray.svg"><p>OVERWATCH</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-fortnite-gray.svg"><p>FORTNITE</p> </li>
					<li class="item-list"><img src="https://opgg-gnb.akamaized.net/static/images/icons/img-navi-r-6-gray.svg"><p>RainbowSix Siege</p> </li>
					
					<form action="/myopggapp/search" method ="get">
				<div class="input-group mb-3">
  
  <input type="text" name="SummonerName" class="form-control" placeholder="??????????????? + enter" aria-label="Username" aria-describedby="basic-addon1">
</div>
			
			</form>	
				</ul>
			
			
			</nav>
		
		</header>
	
	
	
	<div class="main_contents">
		<div class="result_area">
			<div class="icon_area">
			
				<img src=<c:url value="${profileImgURL}"/> />
				<p class="summoner_level">?????? : ${summonerLevel } </p> 
				
			</div>
			<div class="summoner_info">
				<p class="summoner"> ${SummonerName }  </p>
				<p class="update_date">????????? ???????????? ???????????? ??????: ${revisionDate } </p>
				<div class="span">
					<span> ???????????? : {{gameMode }} </span>
				</div>
				
				
					
			
				<div class="gameInfo_table">
				
				
				  <table class='table' id="table_ban">
            <thead>
                <tr>
                    
           
                    <th scope='col'> ????????? ??? ?????? </th>
                    
                    
                    
                </tr>
            </thead>
            <tbody id='bidders'>
            <!--  -->
			<tr v-for="(dataList, idx) in bannedChampions" :key="idx">
            <td>{{dataList.championId}}
             <img :src="'https://z.fow.kr/champ/'+dataList.championId+'_64.png'">
            
             </td>
             
             
   
            </tr>
           
          
            
            
            </tbody>
        </table>
        
        	  <table class='table' id="table_champion">
            <thead>
                <tr>
                    
                 
                    <th scope='col'> ????????? </th>
                   
                </tr>
            </thead>
            <tbody id='bidders'>
            <!--  -->
			<tr v-for="(dataList, idx) in participants" :key="idx">
            <td>{{dataList.championId}}
            <img :src="'https://z.fow.kr/champ/'+dataList.championId+'_64.png'">
             </td>
            
   
            </tr>
           
          
            
            
            </tbody>
        </table>
        
        
          <table class='table' id="table_summoner">
            <thead>
                <tr>
                    
                 
                    <th scope='col'> ????????? ?????? </th>
                    <th scope='col'> ??????1 </th>
                    <th scope='col'> ??????2 </th>
                </tr>
            </thead>
            <tbody id='bidders'>
            <!--  -->
			<tr v-for="(dataList, idx) in participants" :key="idx">
            <td>
            <a :href="'/myopggapp/search?SummonerName=' + dataList.summonerName"  style="black">{{dataList.summonerName}} </a>
            </td>
             <td>{{dataList.spell1Id}} 
         		 <div class="spell1" v-if= "dataList.spell1Id == 21">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBarrier?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 1">
       <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBoost.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 14">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 3">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerExhaust.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 4">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 6">
        <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHaste.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 7">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHeal.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 11">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerSmite.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell1" v-if= "dataList.spell1Id == 12">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerTelePort.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
             
             </td>
              <td>
              {{dataList.spell2Id}}
               <div class="spell2" v-if= "dataList.spell2Id == 21">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBarrier?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
           <div class="spell2" v-if= "dataList.spell2Id == 54">
           
      <img src="https://opgg-static.akamaized.net/images/lol/spell/Summoner_UltBook_Placeholder.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 1">
       <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerBoost.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 14">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 3">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerExhaust.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 4">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 6">
        <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHaste.png?image=c_scale,q_auto,w_22&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 7">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerHeal.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 11">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerSmite.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
      
      <div class="spell2" v-if= "dataList.spell2Id == 12">
      <img src="https://opgg-static.akamaized.net/images/lol/spell/SummonerTelePort.png?image=c_scale,q_auto,w_42&v=1626880099">
      </div>
           
             
              
              
              
               </td>
   		
      
             
            </tr>
           
          
            
            
            </tbody>
        </table>
        
        
        
        
        
        
        </div>
     
				<div class="buttons_area">
				<div class="Button_refresh">
				
					<div class="button_items" @click ="viewGameInfo()">
					????????? ?????? 
					
					</div>
					
				
				</div>
				<div class="champmastery_items" @click="viewChampionMastery()">
				<div class="button_items_champmastery">
					????????? ????????? ?????? 
					
					</div>
					</div>
					
					</div>
					
					
					
					   
			<input type="hidden" id="encryptedId" value=${encryptedId}>
			
			
			</div>
		
		</div>
		
		
		
		
        	  <table class='table' id="table_champion_mastery">
            <thead>
                <tr>
                    
           
                    
                     <th scope='col'> ????????? </th>
                      <th scope='col'>  ??????????????? </th>
                       <th scope='col'>  ?????????????????? </th>
                        <th scope='col'>  championPointsSinceLastLevel </th>
                         <th scope='col'>  championPointsUntilNextLevel </th>
                          <th scope='col'>  chestGranted </th>
                           <th scope='col'> ??????????????? ?????????????????? </th>
                           <th scope='col'> ???????????? </th>
                    
                    
                    
                </tr>
            </thead>
            <tbody id='bidders'>
            <!--  -->
			<tr v-for="(dataList, idx) in championMastery" :key="idx">
            <td>{{dataList.championId}}
            <img :src="'https://z.fow.kr/champ/'+dataList.championId+'_64.png'">
            
             </td>
              <td>{{dataList.championLevel}}
           
            
             </td>
              <td>{{dataList.championPoints}}
           
            
             </td>
              <td>{{dataList.championPointsSinceLastLevel}}
           
            
             </td>
              <td>{{dataList.championPointsUntilNextLevel}}
           
            
             </td>
              <td>{{dataList.chestGranted}}
           
            
             </td>
              <td>
              
              {{dataList.lastPlayTime}}
           
            
             </td>
             <td> {{dataList.tokensEarned}} </td>
             
             
   
            </tr>
           
          
            
            
            </tbody>
        </table>
		<div class="result_rank">
			<div class="left_rank_area">
				<div class="image_rank">
					<div class= "rank_image_item">
					<h3>${queueType }</h3>
					
					<img src=<c:url value="https://opgg-static.akamaized.net/images/medals/${tier}_1.png?image=q_auto:best&v=1"/> />
					</div>
					<div class="rank_information">
					<p class="rank_name">${tier } </p>
					<p class="rank_point">${leaguePoints} LP / ${wins } ??? ${losses } ???</p>
					
					 </div>
					
					
				</div>
			
			</div>
		<div class="match_list_items">
		
			
			 	
			 
			<c:forEach var="data" items="${matches}">
				
			<div class="locale">
	        ?????? : ${data.platformId }
	        <p>?????? :${data.lane }  </p>
	        <p> ${data.role } </p>
	       <!--  ?????? ???????????? ?????? ??????????????? a????????? ??????????????????.  -->
	       <a href="/myopggapp/MatchInfo/?matchId=${data.gameId }">??????????????????</a> 
	       
			</div>
		
			<div class="champion_number">
		
				<c:if test="${data.champion eq '238'}">

    		<img src="https://opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_140&v=1624418935">
    		
		</c:if>
			<c:if test="${data.champion eq '91' }">
		<img src="https://opgg-static.akamaized.net/images/lol/champion/Talon.png?image=c_scale,q_auto,w_140&v=1624418935">
			
			
			
			</c:if>
								<c:if test="${data.champion eq '21' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Kindred.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
			<c:if test="${data.champion eq '222' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
			<c:if test="${data.champion eq '24' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Jax.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			<c:if test="${data.champion eq '80' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Pantheon.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
		   <c:if test="${data.champion eq '81' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Ezreal.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
			
						<c:if test="${data.champion eq '53' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '22' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Ashe.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '236' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '51' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Caitlyn.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
						<c:if test="${data.champion eq '32' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Amumu.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
									<c:if test="${data.champion eq '38' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Kassadin.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
									<c:if test="${data.champion eq '12' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Zac.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
								<c:if test="${data.champion eq '350' }">
			<img src="https://opgg-static.akamaized.net/images/lol/champion/Yuumi.png?image=c_scale,q_auto,w_140&v=1624418935">
			</c:if>
								
			</div>	
		</c:forEach>
		</div>		
		</div>

	</div>
	
	</div>
</body>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script>

const app = new Vue({
    el: '.main_contents',
    data: {
    	issue: '',
    	matchInfo :'',
    	participants:'',
    	bannedChampions:'',
    	gameMode : '',
    	championMastery:'',
    },
    mounted(){
    	
    	 axios.get('http://localhost:8082/myopggapp/status')  
 	    .then((res)=>{
 	    	//console.log(res.data);
 	       // console.log(res.data.incidents[0].titles[1]); //?????? ?????? ?????? 
 	        //console.log(res.data.incidents[0].updates[0].translations[1].content);
 	        //this.issue = res.data.maintenances[0].updates[0].translations[1].content;
 	        
 	    }) 	
 	    $("#table_ban").attr('style', "display:none;");  //?????????
 	   $("#table_champion").attr('style', "display:none;");  //?????????
 	  $("#table_summoner").attr('style', "display:none;");  //?????????
 	  //table_champion_mastery
 	   $("#table_champion_mastery").attr('style', "display:none;");  //?????????


    },
    created(){
 
    },
    methods: {
    	viewGameInfo(){
    		alert("?????? ???????????? ?????? ??????????????? ???????????????.");
    		//jquery
    		var getSummonnerEncryptedId = $("#encryptedId").val();
    			
    	
    		console.log(getSummonnerEncryptedId);
    		 axios.get('http://localhost:8082/myopggapp/getUserGameNowInfo',{
           		 params:{
           			getSummonnerEncryptedId:getSummonnerEncryptedId
           		 }
       		 }) 
    	 	    .then((res)=>{
    	 	 
    	 	    	console.log(res.data.gameMode);
    	 	    
    			  this.bannedChampions = res.data.bannedChampions;
    	 	      this.matchInfo = res.data;
    	 	      this.participants = res.data.participants;
    	 	      this.gameMode = res.data.gameMode;
    	 	      console.log(res.data.Error);
    	 	      if(res.data.Error == '?????????????????? ???????????? ????????????.'){
    	 	    	  alert(res.data.Error);
    	 	    	  return false;
    	 	      }
    	 	     $("#table_ban").attr('style', "display:'';");
    	 	    
    	 	 	   $("#table_champion").attr('style', "display:'';");
    	 	 	  $("#table_summoner").attr('style', "display:'';");
    	 	    	
    	 	    	
    	 	    }) 	
    		
    	},
    	viewChampionMastery(){
    		// ?????? ???????????? ?????????????????? ????????? ???????????????.
    		var getSummonnerEncryptedId = document.getElementById("encryptedId").value;
    		console.log("encryptedId ====> " + getSummonnerEncryptedId);
    		axios.get('http://localhost:8082/myopggapp/getchampionMastery',{
    			params:{
    				getSummonnerEncryptedId:getSummonnerEncryptedId
    			}
    		})
    		.then((res)=>{
    			console.log(res.data);
    			this.championMastery = res.data;
    			
    		})
    		 $("#table_champion_mastery").attr('style', "display:'';");
    	}
       
    },
});



</script>
</html>
