
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
            <h1>All Deal List</h1>
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
                <h2 class="card-title" ><b>Deal List</b></h2>
                <div style="text-align: right;">
                <a href="/sales/dealcreate"><button type="submit" class="btn btn-primary " >Add Deal</button></a>
              
                </div>
                
              </div>
             </div>
              <!-- /.card-header -->
              <div class="card-body">
                
              
                	<table id="example1" class="table table-bordered table-striped">
                  <thead align="center" style="color: white;"
								Black"" bgcolor=" #04AA6D">
                  <tr>
                  <th>Deal Code</th>
                    <th>Deal Name</th>
                    <th>Account Name</th>
                    <th>Type</th>
                    <th>Lead Source</th>
                    <th>Amount</th>
                    
                    <th>Probability(%)</th>
                    <th>Expected Revenue</th>
                    <th>Closing Date</th>
                    <th>Stage</th>
                    <th>Campaign Source</th>
                    <th>Contact Name</th>
                    
                   
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${deal}" var="c">
                <tr>
                    <td>${c.dealCode}</td>
                    <td>${c.dealName}</td>
                    <td>${c.accountName}</td>
                    <td>${c.type}</td>
                    <td>${c.leadSource}</td>
                    <td>${c.amount}</td>
                   
                    <td>${c.probability}</td>
                    <td>${c.expectedRevenue}</td>
                     <td>${c.closingDate}</td>
                    <td>${c.stage}</td>
                    <td>${c.campaignSource}</td>
                    <td>${c.contactName}</td>
        
                        
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