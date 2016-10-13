<!DOCTYPE html>
<html lang="en">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>
<div data-ng-app="myApp" data-ng-controller="formCtrl">
<form name="formData" >
<pre>
genger   : <input type="text" data-ng-model="gender">
Mobile    : <input type="number" data-ng-model="mobile">
User name : <input type="text" data-ng-model="username">
			
Password  : <input type="text" data-ng-model="password"> 
			

		
               <button type="submit">Submit</button>   <button type="reset">Reset</button>    
		
</pre>		    
</form>
</div>

	
  
</body>
</html>
