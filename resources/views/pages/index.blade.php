@extends('layouts.admin')

@section('content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Page
        <small>Admin panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">		  
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
		  
				 <!-- Horizontal Form -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Create Page</h3>
			   <a href="{!! url('/pages/create'); !!}"><span class="label label-success">Add Page</span></a>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
			
			
			
      
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header"></div>

                <div class="card-body">
				
				 @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div><br />
  @endif
				
				
				
                   <table class="table table-striped">
    <thead>
        <tr>
          <td>ID</td>
          <td>Stock Name</td>
          <td>Stock Price</td>
          <td>Stock Quantity</td>
          <td colspan="2">Action</td>
        </tr>
    </thead>
    <tbody>
        @foreach($pages as $page)
        <tr>
            <td>{{$page->id}}</td>
            <td>{{$page->page_key}}</td>
            <td>{{$page->page_content}}</td>
            <td>{{$page->page_status}}</td>
            <td><a href="{{ route('pages.edit',$page->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('pages.destroy', $page->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
		
        @endforeach
		<tr><td colspan='5'>
			{{ $pages->links() }}
			</td>
		</tr>	
    </tbody>
  </table>
					
					
					
					
					
					
					
					
					
					
					
					
                </div>
            </div>
        </div>
    </div>
</div>

		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
          </div>
		  
		  
		  
			
			
			
			
			
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
@endsection
