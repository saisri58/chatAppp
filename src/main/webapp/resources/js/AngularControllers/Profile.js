app.controller('ProfileImage', [ '$scope', '$http', function($scope, $http) {
	var BASE_URL = 'http://localhost:8181/Chatapp';
	$scope.profileimage= function() {
		$http({
			method : 'GET',
			url : BASE_URL+'/profileimage',

		}).success(function(data, status, headers, config) {
			$scope.img = data.image
			
		}).error(function(data, status, headers, config) {
			alert("Error");
		});
	};
	
}]);