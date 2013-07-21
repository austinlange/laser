<?php 
	$header = file_get_contents('header.html');
?>
<!doctype html>
<html>
	<head>
		<title>Laser</title>
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome/css/font-awesome.min.css">
		<link rel='stylesheet' href='style.css' type='text/css'>
	</head>
	<body class='signup-page'>
		<?php echo($header); ?>
		<div class='signup'>
			<h3>Sign Up for Laser</h3>
			<p>Enter your information to create an account.</p>
			<form id='signup-form' method = 'post' action='api/1/user/'>
				<table class='signup-table'>
					<tr>
						<td class='form-label'>Name:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Email Address:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Confirm Email:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Password:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Confirm Password:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Zip Code:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Phone #:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
				</table>
				<div class='form-row'>
					<input type='submit' value="Register" />
				</div>
			</form>
		</div>
		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	</body>
<html>