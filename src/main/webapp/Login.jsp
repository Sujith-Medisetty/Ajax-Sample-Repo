<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">

      function madeAjaxCall(){
      
  
       
           var search = {};
    search["firstName"] =$("#firstName").val();
    search["lastName"]=$("#lastName").val();
        
        
       $.ajax({
        type: "post",
        url: "http://localhost:8082/employee",
        cache: false,    
        data:search,
        success: function(response){
             console.log(response);
             $('#result').html(response.firstname);
        },
                error: function(){      
         alert('Error while request..');
        }
       });
      }
      
      function jsFunction(val){
                 $.ajax({
        type: "post",
        url: "http://localhost:8082/employee",
        cache: false,    
        data:"val="+val,
        success: function(response){
             console.log(response);
             $('#result').html(response);
        },
                error: function(){      
         alert('Error while request..');
        }
       });
      }
      
</script>

      <form name="employeeForm" method="post">
         <table cellpadding="0" cellspacing="0" border="1" class="GridOne">
            <tr>
               <td>First Name</td>
               <td><input type="text" name="firstName" id="firstName" value=""></td>
            </tr>
            <tr>
               <td>Last Name</td>
               <td><input type="text" name="lastName" id="lastName" value=""></td>
            </tr>
            <tr>
               <td>Email</td>
               <td><input type="text" name="email" id="email" value=""></td>
            </tr>
            <tr>
               <td>Select</td>
               <td>
               <select id ="ddl" name="ddl" onmousedown="this.value='';" onchange="jsFunction(this.value);">
				  <option value='1'>One</option>
				  <option value='2'>Two</option>
				  <option value='3'>Three</option>
				</select>
               </td>
            </tr>
            <tr>
               <td colspan="2" align="center"><input type="button" value="Ajax Submit" onclick="madeAjaxCall();"></td>
            </tr>
         </table>
      </form>
            <h1>Spring Framework Jquery Ajax Demo</h1>
      <div id="result"></div>

</body>
</html>

<!-- /*
                $.get(response,function(data){
                    console.log("hi");	
                });
*/ -->