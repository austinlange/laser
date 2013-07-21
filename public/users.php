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
		<div class='users section'>
			<div class='user-search-bar'>
				<input type='text' /><input type='submit' value='Search Users' />
				<a href='add-user.php' class='users-add-button colorgreen'><i class='icon-plus-sign-alt'></i> Add New User</a>
				<a href='#' class='show-more-options'>Advanced Search <i class='icon-gear'></i></a>
				<div class='user-search-advanced'>
					ADVANCED OPTIONS HERE
				</div>
			</div>

			<table class='users-table'>
				<thead>
					<tr>
						<th>Actions</th>
						<th>Name</th>
						<th>Email</th>
						<th>Join Date</th>
						<th>Last Activity</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorblue' title='Send this user an email'><i class='icon-envelope'></i></a> 
							<a href='#' class='colorgreen' title='Leave a note about this user'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this users information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the user from these results'><i class='icon-remove'></i></a>

						</td>
						<td><a href='user-profile.php' title='See Joseph Smithersonbergs Details'>Joseph Smithersonberg</a></td>
						<td title='joshephsmithersonberg@thesmithersonbergs.com'>joshephsmithersonberg@thesmithersonbergs.com</td>
						<td>April 10, 2009</td>
						<td>June 17, 2013</td>
					</tr>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorblue' title='Send this user an email'><i class='icon-envelope'></i></a> 
							<a href='#' class='colorgreen' title='Leave a note about this user'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this users information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the user from these results'><i class='icon-remove'></i></a>

						</td>
						<td><a href='user-profile.php' title='See Joseph Smithersonbergs Details'>Joseph Smithersonberg</a></td>
						<td title='joshephsmithersonberg@thesmithersonbergs.com'>joshephsmithersonberg@thesmithersonbergs.com</td>
						<td>April 10, 2009</td>
						<td>June 17, 2013</td>
					</tr>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorblue' title='Send this user an email'><i class='icon-envelope'></i></a> 
							<a href='#' class='colorgreen' title='Leave a note about this user'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this users information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the user from these results'><i class='icon-remove'></i></a>

						</td>
						<td><a href='user-profile.php' title='See Joseph Smithersonbergs Details'>Joseph Smithersonberg</a></td>
						<td title='joshephsmithersonberg@thesmithersonbergs.com'>joshephsmithersonberg@thesmithersonbergs.com</td>
						<td>April 10, 2009</td>
						<td>June 17, 2013</td>
					</tr>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorblue' title='Send this user an email'><i class='icon-envelope'></i></a> 
							<a href='#' class='colorgreen' title='Leave a note about this user'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this users information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the user from these results'><i class='icon-remove'></i></a>

						</td>
						<td><a href='user-profile.php' title='See Joseph Smithersonbergs Details'>Joseph Smithersonberg</a></td>
						<td title='joshephsmithersonberg@thesmithersonbergs.com'>joshephsmithersonberg@thesmithersonbergs.com</td>
						<td>April 10, 2009</td>
						<td>June 17, 2013</td>
					</tr>
					<tr>
						<td class='action-column'>
							<a href='#' class='colorblue' title='Send this user an email'><i class='icon-envelope'></i></a> 
							<a href='#' class='colorgreen' title='Leave a note about this user'><i class='icon-comment'></i></a> 
							<a href='user-profile.php' class='colororange' title='Edit this users information'><i class='icon-edit'></i></a> 
							<a href='#' class='colorred' title='Remove the user from these results'><i class='icon-remove'></i></a>

						</td>
						<td><a href='user-profile.php' title='See Joseph Smithersonbergs Details'>Joseph Smithersonberg</a></td>
						<td title='joshephsmithersonberg@thesmithersonbergs.com'>joshephsmithersonberg@thesmithersonbergs.com</td>
						<td>April 10, 2009</td>
						<td>June 17, 2013</td>
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