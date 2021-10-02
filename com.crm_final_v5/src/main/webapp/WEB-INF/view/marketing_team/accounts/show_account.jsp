
<!-- header-->
<jsp:include page="/WEB-INF/common/header.jsp" />

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>All Accounts List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
            <!--   <div class="card-header">
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div> -->
               <!-- /.card-header -->
     
              <!-- /.card-body -->
            </div> 
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h2 class="card-title" ><b>Accounts List</b></h2>
                <div style="text-align: right;">
                <a href="/marketing/accountcreate"><button type="submit" class="btn btn-primary " >Add Account</button></a>
              
                </div>
                
              </div>
             </div>
              <!-- /.card-header -->
              <div class="card-body">
                
              
                	<table id="example1" class="table table-bordered table-fixed">
                  <thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
               
                  
                  <tr>
                  <th>Account Code</th>
                    <th>Account Name</th>
      <!--               <th>Parent Account Name</th> -->
                    <th>Account Number</th>
                    <th>Annual Revenue</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Website</th>
                    <th>Rating</th>
                   
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${AccountsModel}" var="c">
                <tr>
                    <td>${c.accountCode}</td>
                    <td>${c.accountName}</td>
              <%--       <td>${c.parentAccountName}</td> --%>
                    <td>${c.accountNumber}</td>
                    <td>${c.annualRevenue}</td>
                    <td>${c.email}</td>
                    <td>${c.phone}</td>
                    <td>${c.website}</td>
                    <td>${c.rating}</td>
                        
                </tr>
            </c:forEach>
                  </tbody>
                  
                </table>
               
                
                
                
                
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
      </div>







 <jsp:include page="/WEB-INF/common/footer.jsp" />