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
			<h3>Add User</h3>
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
						<td class='form-label'>Password:</td>
						<td><input type='text' id='signup-username-field'/></td>
					</tr>
					<tr>
						<td class='form-label'>Access Level:</td>
						<td>
							<select>
								<option>Root</option>
								<option>Systems Administrator</option>
								<option>Administrator</option>
								<option>Manager</option>
								<option selected='true'>User</option>
							</select>

						</td>
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
		<script type='text/javascript' src="assets/jquery-1.10.2.min.js"></script>
	</body>
<html>