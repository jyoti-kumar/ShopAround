<%-- 
    Document   : place_order1
    Created on : Apr 17, 2013, 10:49:38 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/popup.css" type="text/css" media="all" />
        <script>
        function isInteger(s)
    {
      var i;
	s = s.toString();
      for (i = 0; i < s.length; i++)
      {
         var c = s.charAt(i);
         if (isNaN(c)) 
	   {
		alert("Given value is not a Number");
		return false;
	   }
      }
      return true;
    }
        
        function nxt()
        {
            var name=document.frm.name.value;
            var pincode=document.frm.pincode.value;
            var address=document.frm.address.value;
            var city=document.frm.city.value;
            var state=document.frm.state.value;
            var phone=document.frm.phone.value;
            
            if(name=="")
                {
                 alert("Enter Name");
                 document.frm.name.focus();
                }
            else if(pincode=="")
                {
                 alert("Enter Pincode");
                 document.frm.pincode.focus();
                }
            else if(isNaN(pincode)|| phone.indexOf(" ")!=-1)
	        {
              	 alert("Enter Number in Pincode");
		 return false;
                }
            else if (pincode.length!=6)
	        {
                 alert("Enter 6 digits in Pincode"); 
		 return false;
          	}
            else if(address=="")
                {
                 alert("Enter Address");
                 document.frm.address.focus();
                }
            else if(city=="")
                {
                 alert("Enter City");
                 document.frm.city.focus();
                }
            else if(state=="")
                {
                 alert("Enter State");
                 document.frm.state.focus();
                }
            else if(phone=="")
                {
                 alert("Enter Phone No");
                 document.frm.phone.focus();
                }
            else if(isNaN(phone)|| phone.indexOf(" ")!=-1)
	        {
              	 alert("Enter Number in Phone");
		 return false;
                }
            else if (phone.length!=10)
	        {
                 alert("Enter 10 digits in Phone"); 
		 return false;
          	}
            else
                document.frm.submit();
        }
        </script>
    </head>
    <body>
        <div class="shell">
        <%@include file="header.jsp"%>
        <br><br><br>
        <center>
                <table width="840"  border="0">
                    <tr>
                        <th height="40" style="color: black; font-size: 16px"><u>Shipping Address</u></th>
                    </tr>
                </table>
        </center>
        <br>
        <% 
         String email=request.getParameter("email");
        %>
        <center>
            <form name="frm" action="../place_order2_unreg" method="post">
                <input type="hidden" name="email" value="<%=email%>">
                <table width="400"  border="0">
                    <tr>
                        <td height="45" width="150" style="color: #333333; font-size: 14px">Name</td>
                        <td><input type="text" style=" height: 33px; border:solid 1px #999999" size="40" name="name" tabindex="1"></td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">Pin Code</td>
                        <td><input type="text" style=" height: 33px; border:solid 1px #999999" size="40" name="pincode" tabindex="2" onKeyup="isInteger(this.value)"></td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">Address</td>
                        <td><textarea style=" width: 210px; height: 120px; border:solid 1px #999999" name="address" tabindex="3"></textarea></td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">City</td>
                        <td><input type="text" style=" height: 33px; border:solid 1px #999999" size="40" name="city" tabindex="4"></td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">State</td>
                        <td><input type="text" style=" height: 33px; border:solid 1px #999999" size="40" name="state" tabindex="5"></td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">Country</td>
                        <td style="color: #333333; font-size: 14px">India</td>
                    </tr>
                    <tr>
                        <td height="45" style="color: #333333; font-size: 14px">Phone</td>
                        <td><input type="text" style=" height: 33px; border:solid 1px #999999" size="40" name="phone" tabindex="6" onKeyup="isInteger(this.value)"></td>
                    </tr>
                    <tr>
                        <td height="60"></td>
                        <td><input type="button" name="btn1" value="Continue" onclick="nxt()" style="width: 90px; height: 32px; border:solid 1px #999999; background-color: #990000; color: white; font-size: 14px"></td>
                    </tr>
                </table>
              </form> 
        </center>
        
        
        <br><br><br><br>
        <%@include file="signup.jsp"%>
    <%@include file="signin.jsp"%>
    <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
