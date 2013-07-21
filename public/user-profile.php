<?php 
	$header = file_get_contents('header.html');
?>
<!doctype html>
<html>
	<head>
		<title>Laser - User Name's Profile</title>
		<link rel="stylesheet" type="text/css" href="assets/css/font-awesome/css/font-awesome.min.css">
		<link rel='stylesheet' href='style.css' type='text/css'>
	</head>
	<body>
		<?php echo($header); ?>
		<div class='user-profile section cf'>
			<div class='user-column'>
				<div class='user-profile-pic'>
					User Image
				</div>
				<div class='user-tools'>
					<ul>
						<li><a href='#' title='Get updates about this user in your feed.'><span class='hoverblue'><i class='icon-eye-open'></i></span> Watch User</a></li>
						<li><a href='#' title='Create a copy of this user as a new user.'><span class='hovergreen'><i class='icon-copy'></i></span> Copy As New</a></li>
						<li><a href='#' title='Remove this user from general search and disallow checkouts from this user, but allow checkins.'><span class='hoverred'><i class='icon-remove'></i></span> Deactivate</a></li>
					</ul>
				</div>
			</div>
			<div class='user-details'>
				<h1>User Name <a href='#' class='user-notes-button' title='User Notes'><i class='icon-comment'></i></a><span class='notes-count'>(4)</span> 
				</h1>
				<table class='user-details-table'>
					<tr>
						<td class='form-label'>Email Address:</td>
						<td>abcdefghijk@abcdefg.com <a href='#'><i class='icon-edit'></i></a></td>
					</tr>
					<tr>
						<td class='form-label'>Location:</td>
						<td>Brooklyn, NY USA <a href='#'><i class='icon-edit'></i></a></td>
					</tr>
					<tr>
						<td class='form-label'>Phone #:</td>
						<td>914-555-1234 <a href='#'><i class='icon-edit'></i></a></td>
					</tr>
					<tr>
						<td class='form-label'>Last Activity:</td>
						<td>4:54pm, Feb 10, 2013 <a href='#'><i class='icon-edit'></i></a></td>
					</tr>
					<tr>
						<td class='form-label'>Join Date:</td>
						<td>4:54pm, Feb 10, 2012 <a href='#'><i class='icon-edit'></i></a></td>
					</tr>
				</table>
				<div class='outstanding-items'>
					<h3>Outstanding Items</h3>
					<ul>
						<li class='expandable'>
							<a href='#'>+ <i class="icon-warning-sign"></i> <i class="icon-suitcase"></i> Checkout #MA-8435739 (124 items)</a>
							<ul class='item-group'>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
							</ul>
						</li>
						<li class='expandable'>
							<a href='#'>+ <i class="icon-warning-sign"></i> <i class="icon-suitcase"></i> Checkout #MA-8435739 (124 items)</a>
							<ul class='item-group'>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
							</ul>
						</li>
						<li class='expandable'>
							<a href='#'>+ <i class="icon-warning-sign"></i> <i class="icon-suitcase"></i> Checkout #MA-8435739 (124 items)</a>
							<ul class='item-group'>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
							</ul>
						</li>
						<li class='expandable'>
							<a href='#'>+ <i class="icon-warning-sign"></i> <i class="icon-suitcase"></i> Checkout #MA-8435739 (124 items)</a>
							<ul class='item-group'>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
								<li>Item #1</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class='user-history cf'>
					<h3>User History</h3>
					<table>
						<thead>
							<tr>
								<th>Checkout Name</th>
								<th>Checkout Date</th>
								<th>Return Date</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href='#'>MA-67863987634</a> (16) <a href='#'><i class='icon-comment'></i></a></td>
								<td>2:24pm Feb 5, 2013</td>
								<td>Feb 9, 2013</td>
								<td>LATE</td>
							</tr>
							<tr>
								<td><a href='#'>MA-67465465467634</a> (122)</td>
								<td>12:24pm June 15, 2013</td>
								<td>August 9, 2013</td>
								<td>OUT</td>
							</tr>
							<tr>
								<td><a href='#'>MA-67465465467634</a> (1)</td>
								<td>12:24pm June 15, 2013</td>
								<td>August 9, 2013</td>
								<td>OUT</td>
							</tr>
							<tr>
								<td><a href='#'>MA-67465465467634</a> (1)</td>
								<td>12:24pm June 15, 2013</td>
								<td>August 9, 2013</td>
								<td>OUT</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
		<script type='text/javascript' src="assets/jquery-1.10.2.min.js"></script>
		<script type='text/javascript'>
			$(document).ready(function(){
				$(".outstanding-items ul li a").click(function(e){
					e.preventDefault();
					$(this).parent().find(".item-group").slideToggle();
				});
			});
		</script>
</html>