<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<link href="static/css/style.css" rel="stylesheet">
<%-- <body> 


	<h1>Add Product</h1>
	<form:form action = "/product/add"  modelAttribute="product">
		  <input type="hidden" value="${id}"/>
            <input type="hidden" value="${version}"/>
            <div class="form-group">
                <label class="col-sm-2 control-label">Product Id:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="productId"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Name:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Price:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="price"/>
                </div>
            </div>
            <div class="row">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
	</form:form> --%>
</body>
<body>
<%-- 	
	<div class="container"><h1>Add a Product</h1>
		<c:url var="addAction" value="/product/add"></c:url>
		<div class="form-group">
		<form:form action="${addAction}" modelAttribute="product">
		
			<table class="table">
			<c:if test="${!empty product.name}">
					<tr>
						<td><form:label path="id">
								<spring:message text="id" />
							</form:label></td>
						<td><form:input path="id" readonly="true" size="8"
								disabled="true" /> <form:hidden path="id" /></td>
					</tr>
				</c:if>
			
				<tr>			
					<td><form:label path="name">
							<spring:message text="Product Name" />
						</form:label></td>
					<td><form:input path="name" /> <form:errors path="name"
							cssClass="errors"></form:errors></td>
				</tr>				
			
				<tr>
					<td><form:label path="price">
							<spring:message text="Price" />
						</form:label></td>
					<td><form:input path="price" /> <form:errors path="price"
							cssClass="errors"></form:errors></td>
				</tr>
				<tr>
					<td colspan="3">
							<input type="submit" class="btn btn-success"
								value="<spring:message 
					text="Add Product"/>" />
						</td>
				</tr>
			</table>
		</form:form>
		</div>
		<br>
		</div>

</body> --%>
<body>
  <form:form action="/product/add" cssClass="form-horizontal"
      method="post" modelAttribute="product">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="productId" class="col-md-3 control-label">productId</label>
       <div class="col-md-9">
        <form:input path="productId" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="productname" class="col-md-3 control-label">product
        Name</label>
       <div class="col-md-9">
        <form:input path="name" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <label for="price" class="col-md-3 control-label">price</label>
       <div class="col-md-9">
        <form:input path="price" cssClass="form-control" />
       </div>
      </div>
    <div class="form-group">
       <label for="description" class="col-md-3 control-label">Description
        </label>
       <div class="col-md-9">
        <form:input path="description" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">
        <form:button cssClass="btn btn-primary">Submit</form:button>
       </div>
      </div>

     </form:form>
     
     </body>

</html>
