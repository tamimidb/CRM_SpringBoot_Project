
<jsp:include page="/WEB-INF/common/header.jsp" />




<section class="content">
	      <div class="container-fluid">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>General Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">General Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
           <!--    <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div> -->
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/employee/save" method="POST">
					            
            <!-- /.card -->

            <!-- Input addon -->
          
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h1 class="card-title">Employee Information</h1>
                
              </div>
            
              <!-- /.card-header -->
              <div class="card-body">
              
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Campaign Code</label>
                        <input type="text" name="fname" class="form-control" placeholder="Enter Your First Name">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Title</label>
                        <input type="text" name="lname" class="form-control" placeholder="Enter Your Last Name">
                      </div>
                    </div>
                  </div>
                    <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Offer</label>
                        <input type="text" name="ecode" class="form-control" placeholder="Enter Code">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <label>Depertment</label>
                      <select class="form-control select2" name="depertment" style="width: 100%;">
                        <option selected disabled>---Choose Department--- </option>
                        <option value="admin">Admin</option>
                        <option value="hr&payroll">HR&Payroll</option>
                        <option value="accounts&finance">Accounts & Finance</option>
                        <option value="sales">Seles</option>
                        <option value="production">Production</option>
                        <option value="supply chine">Supply Chine Management</option>
                      </select>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label> Date Of Birth:</label>
                          <div class="input-group date" id="reservationdate" data-target-input="nearest">
                              <input type="text" name="dob" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                              <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                              </div>
                          </div>
                      </div>
                    </div>
                   
                    
                    <div class="col-sm-6">
                      
                        <label>Gender</label>
                        <select class="form-control select2" name="gender" style="width: 100%;">
                          <option selected disabled>---Select Gender--- </option>
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                        </select>
                      </div>
                      <!-- text input -->
                      
                    </div>
                 
                  <div class="row">
                    <div class="col-sm-6">
                     
                        <!-- textarea -->
                        <div class="form-group">
                          <label>Address</label>
                          <textarea  name="address" class="form-control" rows="1" placeholder="Enter ..."></textarea>
                        </div>
                      </div>
                     
                        <!-- text input -->
                        <div class="col-sm-6">
                          
                        <div class="form-group">
                          <i class="fas fa-phone"></i>
                          <label>Phone No</label>
                         
                          <input type="text" name="phone" class="form-control" placeholder="Enter Your Phnone Number">
                         
                        </div>
                      </div>
                    
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                  
                        <label>Division</label>
                        <select name="division" name="division" class="form-control select2" style="width: 100%;">
                          <option selected disabled>---Select Division--- </option>
                          <option value="Barishal">Barishal</option>
                          <option value="Chattogram">Chattogram</option>
                          <option value="Dhaka">Dhaka</option>
                          <option value="Khulna">Khulna</option>
                          <option value="Mymensingh">Mymensingh</option>
                          <option value="Rajshahi">Rajshahi</option>
                          <option value="Rangpur">Rangpur</option>
                          <option value="Sylhet">Sylhet</option>
                        </select>
                      </div>
                 
                    <!-- text input -->
                    <div class="col-sm-6">
                  
                     
                
                </div>
                         <div class="row">
                          <div class="col-sm-6">
                      
                            <label>Nationality</label>
                            <select class="form-control select2" name="nation" style="width: 100%;">
                              <option selected disabled>---Select Nationality--- </option>
                              <option value="bangladeshi">Bangladeshi</option>
                           
                            </select>
                          </div>
                     
                        <!-- text input -->
                        <div class="col-sm-6">
                        <div class="form-group">
                          <label>Nid No</label>
                          <input type="text" class="form-control" name="nid" placeholder="Enter Your Nid Number">
                        </div>
                      </div>
                    
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                  
                        <label>Marital Status</label>
                        <select class="form-control select2" name="maridge" style="width: 100%;">
                          <option selected disabled>---Select Marital Status--- </option>
                          <option value="married">Married</option>
                          <option value="unmarried">Unmarried</option>
                        </select>
                      </div>
                 
                    <!-- text input -->
                    <div class="col-sm-6">
                  
                      <label>Religion</label>
                      <select class="form-control select2" name="religion" style="width: 100%;">
                        <option selected disabled>---Select Religion --- </option>
                        <option value="muslim">Muslim</option>
                        <option value="hindu">Hindu</option>
                        <option value="chirstian">Chirstian</option>
                        <option value="buddha">Buddha</option>
                      </select>
                    </div>
                
                </div>
                 
                 
                
                  <div class="row">
                      <div class="col-sm-6">
                      <div class="form-group">
                        <label>Basic Salary</label>
                        <input type="text" name="salary" class="form-control"  placeholder="Enter Basic salary">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label> Joining Date:</label>
                           <div class="input-group date" id="joindate" data-target-input="nearest">
                              <input type="text" name="join" class="form-control datetimepicker-input" data-target="#joindate"/>
                              <div class="input-group-append" data-target="#joindate" data-toggle="datetimepicker">
                                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                              </div>
                          </div>
                      </div>
                    </div>
                  </div>
             
                </div>
                <div class="row">
                  <div class="col-md-9"></div>
               
                     <div class="col-md-2"><button type="submit" value="Save" class="btn btn-block btn-success">Save</button></div>

                </div>
              </form>
            </div>
            <!-- /.card -->


              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          </section>
          <!--/.col (right) -->
        </div>
        </div>
        </section>
   
    <!-- /.content -->




 <jsp:include page="/WEB-INF/common/footer.jsp" />