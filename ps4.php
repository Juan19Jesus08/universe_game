<?php  
	include('game.class.php');
	$web = new UniverseGame();

	$id=$_GET['idCompaniaConsola'];
	$consola=$web->sqlArray("select *from companiaconsola");
	
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
		<li> <a href="index.php">Inicio</a></li>
         <?php 
	
           foreach ($consola as $key => $value) {
           
           		echo "<li><a href='".$value['descripcion'].".php?idCompaniaConsola=".$value['idCompaniaConsola']."'>".$value['descripcion']."</a></li>";
           
           }
		
 			?>
           <li> <a href="compras.php"><img src="images/shopcar.png" alt="facebook" width="50" height="50"></a></li>
           <li> <a href="noticias.php"> <img src="images/news.png" width="50" height="50" alt="news"></a></li>
         </ul>
       </nav>
       <section>
		<div id="consolas" >
			<h1>Deportes</h1>
		     <ul>
			
			<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=1	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>	
			</div>
			</section>
			<section>
			<div id=accesorios1>
				<h1>Musical </h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=2	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios2>
				<h1>Vehículos </h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=3	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios3>
				<h1>Peleas </h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=4	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios4>
				<h1>Disparos </h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=5	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="ps4" width="200" height="200"></a></li>';
						}
						?>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios5>
				<h1>Aventura </h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=6	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
				</ul>
			</div>
			</section>
			<section>
			<div id=accesorios6>
				<h1>Acci&oacute;n</h1>
				<ul>
					<?php
				
	

			$inf=$web->sqlArray("select * from videojuegos where idCompaniaConsola=$id and idCategoriaVideojuego=7	");
	
	

				
						
		           	//echo '<div class="titulo"> <img src="images/'.$dato['imagen'].'" alt="ImagenHotel" width="300" height= "300"></div>';
		           	foreach ($inf as $dato) {
					
					echo '<li> <a href="compras/compra.php?id='.$dato['idVideojuego'].'"><img src="images/'.$dato['portada'].'" alt="xbox360" width="200" height="200"></a></li>';
						}
						?>
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