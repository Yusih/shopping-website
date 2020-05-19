<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${orderlist1}" var="orderlist">
          <tbody>
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input"><span class="lbl"></span></label>
              </td>
              <td><a href="bvo-goodsdetail.jsp">${orderlist.title}</a></td>
              <td>${orderlist.price}</td>
              <td class="hidden-480">${orderlist.quantity}</td>
               <td class="">${orderlist.sku}</td> 
              <td class="hidden-480">${orderlist.orderNo}</td>
              <td>
                  ${orderlist.orderTime}
              </td>

            </tr>
			
			
			</c:forEach>
</body>
</html>