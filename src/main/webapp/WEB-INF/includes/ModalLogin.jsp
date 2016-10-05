<style>
body{padding-top:20px;}
  </style>
<div class="container"  >

	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog modal-sm">

			<div class = "container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
		<form action="perform_login" method="post">       
		  <fieldset>
			    	  	<div class="form-group">
			  <input type="text" class="form-control" name="username" id="username" placeholder="Username" required="true" autofocus="" ></div>
			 <div class="form-group">
			  <input type="password" class="form-control" name="password" id="password" placeholder="Password" required="true"> </div>
			  	<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>    		  
			 
			  <button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button> 
			  </fieldset>
			   			
		</form>			
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<script>
	$(document).ready(function() {
		$("#log").click(function() {
			$("#login").modal();
			});
		});
</script>
