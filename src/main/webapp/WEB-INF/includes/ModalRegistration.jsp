<style>
body{padding-top:25px;}
</style>
<div class="container">

	<div class="modal fade" id="registration" role="dialog">
	<div class="modal-dialog modal-sm">
 
			<div class = "container">
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign up</h3>
			 	</div>
			  	<div class="panel-body">
	
					<form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post">
							  <fieldset>
			    	  	<div class="form-group">
						 		<input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>
							
							<div class="form-group">
								
							<input type="text" class="form-control" placeholder="Username"
									data-ng-model="username">
							</div>
							
							<div class="form-group">
									<input type="password" class="form-control"
									placeholder="Password" data-ng-model="password">
							 </div>
							
							<div class="form-group">
									<input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
						
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							 </div>
							
							<div class="form-group">
							 	<label class="radio-inline"> 
								<input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div>
						<button type="submit" class="btn btn-lg btn-primary btn-block">
							<span class="glyphicon glyphicon-off"></span> Register
						</button></fieldset>
					</form>
						</div>
</div>
</div>
		</div>
	</div>
</div></div></div>
<script>
	$(document).ready(function() {
		$("#reg").click(function() {
			$("#registration").modal();
		});
	});
</script>
