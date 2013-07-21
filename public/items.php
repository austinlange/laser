<?php 
	$header = file_get_contents('header.html');
?>
<!doctype html>
<html>
	<head>
		<title>Laser - Users</title>
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome/css/font-awesome.min.css">
		<link rel='stylesheet' href='style.css' type='text/css'>
	</head>
	<body>
		<?php echo($header); ?>
		<div class='items section'>
			<div class='item-search-bar'>
				<input type='text' /><input type='submit' value='Search Items' />
				<a href='add-item.php' class='items-add-button colorgreen'><i class='icon-plus-sign-alt'></i> Add New Item</a>
				<a href='#' class='show-more-options'>Advanced Search <i class='icon-gear'></i></a>
				<div class='item-search-advanced'>
					ADVANCED OPTIONS HERE
				</div>
			</div>

			<table class='items-table'>
				<thead>
					<tr>
						<th>Actions</th>
						<th>Item Name</th>
						<th>Type</th>
						<th>Barcode</th>
						<th>Serial #</th>
						<th>Availability</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorgreen' title='Leave a note about this item'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this items information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the item from these results'><i class='icon-remove'></i></a>
						</td>
						<td>
							<i title='There is more than one of this item, open to view the individuals' class='icon-suitcase'></i> 
							<a href='item-group.php' title='See details about the Sony EX-1100 HD 250gb w/ Firewire'> Sony EX-1100 HD 250gb w/ Firewire</a>
						</td>
						<td>Video Camera</td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
		<script type='text/javascript' src="assets/jquery-1.10.2.min.js"></script>
		<script type='text/javascript'>
			$(document).ready(function(){
				$(".show-more-options").click(function(e){
					e.preventDefault();
					$(".user-search-advanced").slideToggle();
				})
			});
		</script>
	</body>
</html>