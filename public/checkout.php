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
	<body>
		<?php echo($header); ?>
		<div class='section checkout'>
			<h3>User</h3>
			<div class='section checkout-user cf'>
				<div class='user-profile-pic'>

				</div>
				<div class='user-data'>
					<table>
						<tr>
							<td class='form-label'>Name: </td><td><input type='text'/></td><td class='form-label'>Phone: </td><td><input type='text'/></td>
						</tr>
						<tr>
							<td class='form-label'>Email: </td><td><input type='text'/></td class='form-label'><td></td><td></td>
						</tr>
					</table>
				</div>
			</div>
			<h3>Transaction</h3>
			<div class='section checkout-transaction cf'>
				<div class='cart'>
					CART<br/>
					Drag items here to add them to the user's cart to check out.
				</div>
				<div class='shelf'>
					SHELF<br/>
					Search here to find the items the user wants, then drag them into the Cart area.
					<div>
						<input type='text' size='40'/><input type='submit' value='Find Items'/>
					</div>
					<div class='checkout-search-results'>
						<div class='item-result cf'> <div class='item-icon'></div> <div class='item-name'>Item Name Goes Here</div><div class='item-quantity'>Q^v</div></div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>