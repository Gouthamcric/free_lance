<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #292b2c;">
		<a class="navbar-brand" style="font-size:x-large; color: limegreen;" href=""><i class="fas fa-level-up-alt"></i> work</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<style>
			ul.navbar-nav a:hover{
				color: wheat!important;
			}	
			
		</style>
			<ul class="navbar-nav ml-auto">

				<li class="nav-item dropdown">
					<a href="#" class="nav-link" style="color: white; padding-top: 20px;"> Contact Us </a>
				</li>
				<li class="nav-item dropdown trainings">
					<a href="view_profile.php" class="nav-link" style="color: white; padding-top: 20px;">View Profile </a>
				</li>

				<li class="nav-item dropdown">
					<a type="button" class="nav-link" style="color: white;">
						Login as <?php echo $_SESSION['firstname'], "<br>"."( <span style='color: orange;'>". $_SESSION['userrole']."</span> )"; ?>
					</a>
				</li>
				<li class="nav-item dropdown">
					<a href="logout.php" type="button" class="nav-link" style="color: yellow; padding-top:20px;">
						Logout
					</a>
				</li>
			</ul>
		</div>
	</nav>