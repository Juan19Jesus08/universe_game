<?php  
	include('game.class.php');
	$web = new UniverseGame();
	$datos = $web->sqlArray('select * from videogame');
	//print_r($datos);
	///die();
	

?>
<!DOCTYPE html>
<html>
<head>
	
  	<link rel="stylesheet" type="text/css" href="js/slick/slick/slick.css">
  	<link rel="stylesheet" type="text/css" href="js/slick/slick/slick-theme.css">
  <link rel="stylesheet" type="text/css" href="/UniverseGame/css/main.css">
    	<meta charset="utf-8">
	<title>UniverseGame</title>
</head>
<body >
	<div id='wrapper'>
		<header id='principal'>
			<div id='variable'>
				<div id='logo1'>
					<img src="images/logo.png" height="150" width="200" alt="universe_game">           
	    		</div>
	    		<div id="logo2">
	    			<a href="https://www.xbox.com/es-mx/"><img src="images/xbox.png" height="80" width="200" alt="xbox"></a>         

				</div>
	    		<div id="logo3">
	    		<a href="https://www.playstation.com/es-mx/"><img src="images/play.png" height="80" width="200" alt="play_station"></a>           

				</div> 			
	    		<div id="logo4">
	    		<a href="http://www.nintendo.com/es_LA/switch/"><img src="images/nintendo.png" height="80" width="200" alt="nintendo"> </a>          

				</div> 			
 			
				<div id='login'>
					<ul id='listul'>
						<li>
							<a href="sistema/usuarios/registro.php">Registrarse</a>
						</li>
						<li>
							<a href="administrador/login">Entrar</a>
						</li>
					</ul>
				</div>
			</div>
			
		</header>
		<section>
			<div>
				<section class="regular slider">
    				 <div>
				      <img src="images/fifa18.jpg" alt="hotel1" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/acassins.jpg" alt="hotel2" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/call_of_duty.jpg" alt="hotel3" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/destinity.jpg" alt="hotel4" width="1500" height="500" >
				    </div>
				    <div>
				      <img src="images/forza7.jpg" alt="hotel5" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/uncharted.jpg" alt="hotel6" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/marvel.jpg" alt="hotel6" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/shadow.jpg" alt="hotel6" width="1500" height="500">
				    </div>
				    <div>
				      <img src="images/starwars.jpg" alt="hotel6" width="1500" height="500">
				    </div>
  				</section>
			</div>
		</section>
		<nav id="menu">
         <ul>
           <li> <a href="index.html">Inicio</a></li>
           <li> <a href="xbox360.html">Xbox 360</a></li>
           <li> <a href="xboxone.html">Xbox one</a></li>
           <li> <a href="ps3.html">Ps3</a></li>
           <li> <a href="ps4.html">Ps4</a></li>
           <li> <a href="wiiu.html">Wii U</a></li>
           <li> <a href="switch.html">Switch</a></li>
           <li> <a href="compras.html"><img src="images/shopcar.png" alt="facebook" width="50" height="50"></a></li>
           <li> <a href="http://www.levelup.com/reviews"> <img src="images/news.png" width="50" height="50" alt="news"></a></li>
         </ul>
       </nav>
       <section>
		<div id="consolas" >
				<h1>Deportes</h1>
		           <ul>
		           	<?php
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($datos as $dato) {
					
					echo '<li> <a href="compras.html"><img src="images/'.$dato['imagen'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>	
			</div>
			</section>
			<section>
			<div id=accesorios1>
				<h1>Musical </h1>
				<ul>
					<li> <a href="compras.html"><img src="images/mus13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/mus14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html"><img src="images/mus15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/mus16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/mus17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/mus18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios2>
				<h1>Vehículos </h1>
				<ul>
					<li> <a href="compras.html"><img src="images/car13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/car14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html"><img src="images/car15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="xbox360.html"><img src="images/car16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="xbox360.html"><img src="images/car17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="xbox360.html"><img src="images/car18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios3>
				<h1>Peleas </h1>
				<ul>
					<li> <a href="compras.html"><img src="images/peleas13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/peleas14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html"><img src="images/peleas15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/peleas16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/peleas17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/peleas18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios4>
				<h1>Disparos </h1>
				<ul>
					<li> <a href="compras.html"><img src="images/disparos13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/disparos14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html"><img src="images/disparos15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/disparos16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/disparos17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/disparos18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios5>
				<h1>Aventura </h1>
				<ul>
					<li> <a href="compras.html"><img src="images/aventura13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/aventura14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html"><img src="images/aventura15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/aventura16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/aventura17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="compras.html"><img src="images/aventura18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios6>
				<h1>Acci&oacute;n</h1>
				<ul>
					<li> <a href="compras.html.html"><img src="images/accion13.png" alt="xbox360" width="200" height="200"></a></li>
						<li> <a href="compras.html.html"><img src="images/accion14.png" alt="xboxone" width="200" height="200">
						</a></li>
						<li> <a href="compras.html.html"><img src="images/accion15.png" alt="ps4" width="200" height="200"></a></li>
						<li> <a href="compras.html.html"><img src="images/accion16.png" alt="ps3" width="200" height="200"></a></li>
						<li> <a href="compras.html.html"><img src="images/accion17.png" alt="wiiu" width="200" height="200"></a></li>
						<li> <a href="compras.html.html"><img src="images/accion18.png" alt="switch" width="200" height="200"></a></li>
				</ul>
			</div>
		</section>
		<footer id=pie >
			<div id="redes">
			    <h4 > Redes Sociales </h4>
				<ul id="redessociales">
				   
					<li> <a href="https://facebook.com"><img src="images/facebook.png" alt="facebook"></a></li>
					<li> <a href="https://twitter.com"><img src="images/twitter.png" alt="twitter"></a></li>
					<li> <a href="https://instagram.com"><img src="images/instagram.png" alt="instagram"></a></li>
				</ul>
			</div>
			<div  id="empresa">

                <h4 > Informaci&oacute;n</h4>
				<ul id="redesul2">
				
					<li>		
						<a href="sobre_el_sistema.html">Sobre Nosotros</a>
					</li>
					<li>
						<a href="aviso_de_privacidad.html">Aviso de privacidad</a>
					</li>
					
				</ul>
			</div>
			<div id="contacto">
			   <h4 > Contactanos</h4>
				<ul id="contactos">
				
					<li>
						<a href="contacto.php">Contacto</a>
					</li>
				</ul>
			</div>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script src="js/slick/slick/slick.js" type="text/javascript" charset="utf-8"></script>
  	<script type="text/javascript">
    $(document).on('ready', function() {
      $(".regular").slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      $(".center").slick({
        dots: true,
        infinite: true,
        centerMode: true,
        slidesToShow: 1,
        slidesToScroll: 1
      });
      $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true
      });
    });
  </script>
</body>
</html>