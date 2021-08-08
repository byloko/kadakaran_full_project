@extends('backend.layouts.app')

@section('style')
	<style type="text/css">
		
	</style>
@endsection

@section('content')

  <ul class="breadcrumb">
            <li><a href="">Withdraw Details</a></li>
            <li><a href="">Withdraw Details List</a></li>
        </ul>
        
        <div class="page-title">                    
            <h2><span class="fa fa-arrow-circle-o-left"></span> Withdraw Details List</h2>
        </div>

         <div class="page-content-wrap">
            <div class="row">
                <div class="col-md-12">

                    {{-- start --}}
                   @include('message')
                 {{--   <a href="{{ url('admin/user/add') }}" class="btn btn-primary" title="Add New User"><i class="fa fa-plus"></i>&nbsp;&nbsp;<span class="bold">Add New User</span></a> --}}
                    {{-- End --}}

                    {{-- Search Box Start --}}
            <div class="panel panel-default">
                  <div class="panel-heading">
                      <h3 class="panel-title">Withdraw Details Search</h3>
                  </div>

                  <div class="panel-body" style="overflow: auto;">
                    <form action="" method="get" name="submitform">
                        <div class="col-md-3">
                           <label>ID</label>
                           <input type="text" value="{{ Request()->idsss }}" class="form-control" placeholder="ID" name="idsss">
                        </div>
                        <div class="col-md-3">
                           <label>First Name</label>
                           <input type="text" class="form-control" value="{{ Request()->name }}" placeholder="First Name" name="name">
                        </div>
                       
                        <div class="col-md-3">
                           <label>Status</label>
                           <select name="money_status" class="form-control ChangeGroup">
                              <option value="">Status All</option>
                             
                              <option {{ (Request()->money_status ==  '100') ? 'selected' : '' }} value="100">Pending</option>
                              <option {{ (Request()->money_status ==  '1') ? 'selected' : '' }} value="1">Success</option>
                              <option {{ (Request()->money_status ==  '2') ? 'selected' : '' }} value="2">Decline</option>
                             
                          </select>
                        </div>

                     
                        
                        <div style="clear: both;"></div>
                        <br>
                        <div class="col-md-12">
                           <input type="submit" class="btn btn-primary" value="Search">
                           <a href="{{ url('admin/withdraw_request') }}" class="btn btn-success">Reset</a>
                        </div>
                     </form>
                  </div>
               </div>  

                    {{-- Search Box End --}}

                    {{-- Section Start --}}
              <div class="panel panel-default">
                  <div class="panel-heading">
                      <h3 class="panel-title">Withdraw Details List</h3>
                  </div>
                 

              <div class="panel-body" style="overflow: auto;">
                  <table  class="table table-striped table-bordered table-hover">
                      <thead>
                          <tr>
                              <th>ID</th>
                              <th>First Name</th>
                              <th>Amount Transfer</th>
                              <th>Type</th>
                              <th>Date and Time</th>
                              <th>Status</th>
                              <th>Action</th>
                          </tr>
                      </thead>
                      <tbody>
                    @forelse($getrecord as $value)
                          <tr>
                              <td>{{ $value->id }}</td>
                              <td>{{ !empty($value->user->name) ? $value->user->name : '' }}</td>
                              <td>{{ $value->amount_transfer }}</td>
                              <td>
                                <?php
                                   if( $value->money_type == '0'){
                                ?>
                                <span class="label label-success" style="font-size: 12px;">Add Money</span>
                                <?php } elseif ($value->money_type == '1') { ?>
                                <span class="label label-warning" style="font-size: 12px;">Withdraw Money</span>
                                <?php } ?>
                              </td>

                              <td>{{ date('d-m-Y h:i:s', strtotime($value->money_date)) }}</td>
                     
                          

                              <td>
                                <?php if($value->money_status == '0') { ?>
                                <span class="label label-warning" style="font-size: 12px;">Pending</span>
                                <?php } elseif($value->money_status == '1') { ?>
                                <span class="label label-success" style="font-size: 12px;">Success</span>
                                <?php } elseif($value->money_status == '2') { ?>
                                <span class="label label-danger" style="font-size: 12px;"> Decline</span>
                                <?php
                                  }
                                ?>
                             </td>

                                
                                <td>
                                 <?php if ($value->money_status == '0') { ?>
                                    <a href="{{ url('admin/withdraw_request/pay_now/'.$value->id) }}" class="btn btn-warning btn-rounded btn-sm">Pay Now</a>   
                                 <?php  }elseif ($value->money_status == '1') { ?>
                                       <button class="btn btn-success btn-rounded btn-sm"><span class="fa fa-check"></span></button>
                        
                                 <?php } elseif($value->money_status == '2') {  ?>
                                  <button class="btn btn-danger btn-rounded btn-sm"><span class="fa fa-times"></span></button>
                        
                                 <?php
                                  }
                                ?>
                                </td>
                              
                            
                          </tr>
                         @empty
                          <tr>
                              <td colspan="100%">Record not found.</td>

                          </tr>
                          @endforelse
                      </tbody>

                  </table>
                  <div style="float: right">
                        {{ $getrecord->appends(Illuminate\Support\Facades\Input::except('page'))->links() }}
                  </div>
              </div>

              </div>
              {{-- Section End --}}
                    
                </div>
            </div>
        </div>


@endsection
  @section('script')
  <script type="text/javascript">
 $(document).ready(function() {
    $('.ChangeGroup').on('change', function() {
     document.forms['submitform'].submit();
  });
});
  </script>
@endsection
