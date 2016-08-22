<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
        
            <title>
               Comparison Tool
            </title>
<style type="text/css">
body {
	background-color: white;
	margin:80px 80px 100px 100px;
}
div#fixedheader {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	color:white;
	background:#333;
	padding:-10px;
}
div#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:#CCC;
	background:#333;
	padding:8px;
}

tr:nth-child(odd) {
    background-color: #dddddd;
}

.ui-autocomplete {
    position: absolute;
    z-index: 1000;
    cursor: default;
    padding: 0;
    margin-top: 2px;
    list-style: none;
    background-color: #ffffff;
    border: 1px solid #ccc;
    -webkit-border-radius: 5px;
       -moz-border-radius: 5px;
            border-radius: 5px;
    -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
       -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.ui-autocomplete > li {
  padding: 3px 20px;
}
.ui-autocomplete > li.ui-state-focus {
  background-color: #DDD;
}
.ui-helper-hidden-accessible {
  display: none;
}

</style>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="{{public_path}}js/jquery.min.js"></script>
<script src="{{public_path}}js/bootstrap.min.js"></script>
<script src="{{public_path}}js/jquery-ui.min.js"></script>
  <link rel="stylesheet" type="text/css" media="all" href="{{public_path}}style.css">
<script type="text/javascript" src="{{public_path}}js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="{{public_path}}js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="{{public_path}}js/currency-autocomplete.js"></script>
</head>
 	
<body>
    <div class="navbar navbar-default navbar-fixed-top" style="background-color: #333;">
    <div class="container">
      <div class="navbar-header">
          <a class="navbar-brand" href="" style="color: white;">Comparison Tool</a>
      </div>
     
    </div>
  </div>
<br><br>
<div class="container-fluid">
    <br><br>
    <div class="col-md-12">   
    <div class="col-md-3" >
        
        <table class="table table-bordered" style="margin-top: 240px;">
          <tr>
            <td>District</td>
          </tr>
          <tr>
            <td>Tenure</td>
          </tr>
          <tr>
            <td>Development year(TOP)</td>
          </tr>
          <tr>
            <td>Nearest MRT<br><br></td>
          </tr>
          <tr>
            <td>CBD Connectivity</td>
          </tr>
          <tr>
            <td>Average PSF Price</td>
          </tr>
          <tr>
            <td>Average Number of sales transactions per month</td>
          </tr>
          <tr>
            <td>Sale Liquidity Index</td>
          </tr>
          <tr>
            <td>Average Rental PSF</td>
          </tr>
          <tr>
            <td>Rent Liquidity Index</td>
          </tr>
          <tr>
            <td>Average Rental Yield</td>
          </tr>
          <tr>
            <td>Condominium High</td>
          </tr>
          <tr>
            <td>Amenities</td>
          </tr>
        </table>
    </div>
        
    <div class="col-md-3">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="search_one" id="search_one" style="border-radius: 2em; width: 275px;">
            <span class="glyphicon glyphicon-search form-control-feedback"></span>
        </div>
        <br>
         <div id="first_div">
             <div><img src="{{public_path}}images/no_image.jpg" alt="Mountain View" style="width: 100%; height:140px;">  
        </div>
             <table class="table table-bordered">
                 <tr>
                     <th style="background-color: white; padding: 12px;">
                     <br>
                     </th>
                 <tr>
          <tr>
              <td><br>
          </td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
        </table>
        </div>
    </div>
       
    <div class="col-md-3">
        <div class="input-group">
           <input type="text" class="form-control" placeholder="Search" name="search_two" id="search_two" style="border-radius: 2em; width: 275px;">
            <span class="glyphicon glyphicon-search form-control-feedback"></span>
        </div>
        <br>
         
        <div id="second_div">
            
          <div><img src="{{public_path}}images/no_image.jpg" alt="Mountain View" style="width: 100%; height:140px;">  
        </div>
             <table class="table table-bordered">
                 <tr>
                     <th style="background-color: white; padding: 12px;">
                     <br>
                     </th>
                 <tr>
          <tr>
              <td><br>
          </td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
        </table>
        </div>
        </div>
        
    <div class="col-md-3">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="search_three" id="search_three" style="border-radius: 2em; width: 275px;">
            <span class="glyphicon glyphicon-search form-control-feedback"></span>
        </div>
         <br>
         <div id="third_div">
           
            <div><img src="{{public_path}}images/no_image.jpg" alt="Mountain View" style="width: 100%; height:140px;">  
        </div>
             <table class="table table-bordered">
                 <tr>
                     <th style="background-color: white; padding: 12px;">
                     <br>
                     </th>
                 <tr>
          <tr>
              <td><br>
          </td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
        </table>
    </div>
    </div>    
        
    </div>    
  </div>

 
<div id="fixedfooter"></div>
</body>
<script>
    $(document).ready(function(){
        
        $("#search_one").keyup(function(event){
            if(event.keyCode == 13){
                var search_one = $("#search_one").val();
                var dataString = 'search='+ search_one;
                $.ajax({
                type: "POST",
                url: "{{base_path}}Home/search",
                data: dataString,
                cache: false,
                success: function(result){
                        $('#first_div').html(result);
                }
                });
            }
         });
        
        $("#search_two").keyup(function(event){
            if(event.keyCode == 13){
                var search_one = $("#search_two").val();
                var dataString = 'search='+ search_one;
                $.ajax({
                type: "POST",
                url: "{{base_path}}Home/search",
                data: dataString,
                cache: false,
                success: function(result){
                        $('#second_div').html(result);
                }
                });
            }
         });
         
        $("#search_three").keyup(function(event){
            if(event.keyCode == 13){
                var search_one = $("#search_three").val();
                var dataString = 'search='+ search_one;
                $.ajax({
                type: "POST",
                url: "{{base_path}}Home/search",
                data: dataString,
                cache: false,
                success: function(result){
                        $('#third_div').html(result);
                }
                });
            }
         });
        
    
    var availableTags = [];
   
    {% for data in property_list %}
        availableTags.push("{{data}}");
    {% endfor%}
  
   
  // setup autocomplete function pulling from currencies[] array
  $('#search_one').autocomplete({
    lookup: availableTags,
    onSelect: function (suggestion) {
      var thehtml = '<strong>Currency Name:</strong> ' + suggestion + ' <br> <strong>Symbol:</strong> ' + suggestion;
      $('#outputcontent').html(thehtml);
    }
  });
  $('#search_two').autocomplete({
    lookup: availableTags,
    onSelect: function (suggestion) {
      var thehtml = '<strong>Currency Name:</strong> ' + suggestion + ' <br> <strong>Symbol:</strong> ' + suggestion;
      $('#outputcontent').html(thehtml);
    }
  });
  $('#search_three').autocomplete({
    lookup: availableTags,
    onSelect: function (suggestion) {
      var thehtml = '<strong>Currency Name:</strong> ' + suggestion + ' <br> <strong>Symbol:</strong> ' + suggestion;
      $('#outputcontent').html(thehtml);
    }
  });

});
</script>
</html>
