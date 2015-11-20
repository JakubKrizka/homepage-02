<!DOCTYPE html>
<!-- saved from url=(0042)http://toddmotto.com/labs/responsive-nav/# -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Responsive navigation</title>
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<meta name="author" content="@toddmotto">
		<link href="responsive-menu_files/main.css" rel="stylesheet">
		<link href="responsive-menu_files/demo.css" rel="stylesheet">
	</head>
	<body>
		
		<div class="wrapper">
			<div class="main">
				
				<!-- Nav -->
				<nav class="nav">
					<ul class="nav-list">
						
						
						
						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">Události</a></li>
						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">Spolupráce</a></li>
						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">Parneři</a></li>

						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">FOTO</a></li>
						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">AUDIO</a></li>
						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">VIDEO</a></li>


						<li class="nav-item"><a href="./responsive-menu_files/responsive-menu.html">E-SHOP</a></li>
						
						
						
						
					</ul>
				</nav>
				<!-- /Nav -->
				
				<div class="content">
					<p class="content-text">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur viverra interdum semper. 
						Ut blandit adipiscing tempor. Etiam scelerisque, felis dignissim rutrum tempor, neque risus 
						sagittis mi, ac aliquam est massa eget lectus. Class aptent taciti sociosqu ad litora torquent 
						per conubia nostra, per inceptos himenaeos. Ut pretium adipiscing ipsum, id iaculis quam mattis 
						et. Cras mollis eleifend tortor, ut venenatis turpis pulvinar id. In hac habitasse platea 
						dictumst. Pellentesque feugiat mi sit amet ligula convallis rhoncus fermentum sem aliquam. 
						Vivamus egestas justo ac nisl facilisis sed aliquam mi ultrices. Suspendisse potenti. Sed 
						elementum blandit nisl eu tempus.
					</p>
					<p class="content-text">
						Nulla egestas facilisis ipsum sit amet semper. Curabitur leo ante, scelerisque ut ornare ac, 
						egestas sit amet nunc. Aenean eget scelerisque lorem. Donec sapien felis, aliquam id vehicula 
						sit amet, posuere venenatis urna. Aenean at dui libero. Nullam interdum molestie sem, vitae 
						egestas augue pretium at. Duis erat erat, ultrices eu accumsan vitae, consectetur quis orci.
					</p>
					<p class="content-text">
						Etiam vulputate pellentesque lacus ac ullamcorper. Vestibulum ac semper lacus. Nunc id accumsan 
						lectus. Sed lacinia dui vel nisi tincidunt vitae varius nunc tincidunt. In hac habitasse platea 
						dictumst. Vestibulum purus sapien, eleifend quis commodo sed, euismod non velit. Morbi magna nisl, 
						tincidunt sed pretium ut, consequat sed nunc. Cras at diam est, nec consectetur nisi. Nulla ante 
						arcu, laoreet nec volutpat ut, malesuada quis velit.
					</p>
				</div>
			</div>
		</div>
		
		<script>
		(function () {
			
		    // Create mobile element
		    var mobile = document.createElement('div');
		    mobile.className = 'nav-mobile';
		    document.querySelector('.nav').appendChild(mobile);
		
		    // hasClass
		    function hasClass(elem, className) {
		        return new RegExp(' ' + className + ' ').test(' ' + elem.className + ' ');
		    }
		
		    // toggleClass
		    function toggleClass(elem, className) {
		    	var newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' ';
		        if (hasClass(elem, className)) {
		            while (newClass.indexOf(' ' + className + ' ') >= 0) {
		                newClass = newClass.replace(' ' + className + ' ', ' ');
		            }
		            elem.className = newClass.replace(/^\s+|\s+$/g, '');
		        } else {
		            elem.className += ' ' + className;
		        }
		    }
		
		    // Mobile nav function
		    var mobileNav = document.querySelector('.nav-mobile');
		    var toggle = document.querySelector('.nav-list');
		    mobileNav.onclick = function () {
		        toggleClass(this, 'nav-mobile-open');
		        toggleClass(toggle, 'nav-active');
		    };
		})();
		</script>
	
	
	
</body></html>