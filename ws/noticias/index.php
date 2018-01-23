<?php
//header("Content-Type: application/json");
include ("../../game.class.php");
$web = new UniverseGame;
$web->conexion();
$data=array();
//postman es un plugin para consumir los metodos http

	$metodo= $_SERVER['REQUEST_METHOD'];

	switch ($metodo) {
		case 'POST':
			//echo "Aqui voy a insertar";
		$cadena=file_get_contents('php://input');

		$noticias=json_decode($cadena);//decodifica un json aun arreglo
		$sql="insert into news(titulo,imagen,descripcion)values('".$noticias[0]->titulo."','".$noticias[0]->imagen."','".$noticias[0]->descripcion."')";
		$fila=$web->db->exec($sql);
		   		if($fila==1)
		   		{
		   			$data['mensaje']="el noticias se ingreso satisfactoriamente";
		   		}else {
		   			$data['mensaje']="error desconocido";
		   		}
			break;
			case 'PUT':
			//echo "Aqui voy a actualizar";
				if(isset($_GET['id']))
		   {
		   	$id=$_GET['id'];
		   	if(is_numeric($id))
		   	{
		   		$cadena=file_get_contents('php://input');
		   		$noticias=json_decode($cadena);
		   		$sql = "update news set titulo='".$noticias[0]->titulo."',imagen='".$noticias[0]->imagen."',descripcion='".$noticias[0]->descripcion."' where idnews=".$id.";";
		   		$fila=$web->db->exec($sql);
		   		if($fila==1)
		   		{
		   			$data['mensaje']="el noticias se actualizo satisfactoriamente";
		   		}else {
		   			$data['mensaje']="el noticias no existe";
		   		}
		   	}
		   }
			break;
			case 'DELETE':
			//echo "Aqui voy a borrar";
			if(isset($_GET['id']))
		   {
		   	$id=$_GET['id'];
		   	if(is_numeric($id))
		   	{
		   		$sql = "delete from news where idnews = ".$id.";";
		   		$fila=$web->db->exec($sql);
		   		if($fila==1)
		   		{
		   			$data['mensaje']="el noticias se borro satisfactoriamente";
		   		}else {
		   			$data['mensaje']="el noticias no se encuentra";
		   		}
		   	}
		   }
			break;
			case 'GET':
		   default:
			//echo  "aqui voy a leer";
		   $condicion="";
		   if(isset($_GET['id']))
		   {
		   	$id=$_GET['id'];
		   	if(is_numeric($id))
		   	{ 
		   		$condicion=" where idnews=$id ";
		   	}
		   }
		   $sql="SELECT * from news $condicion order by titulo";
		   //echo $sql;
			$data=$web->sqlArray($sql);
		   
			break;
	}
		echo json_encode($data);//convertimos un arreglo a json
		//ip:8080/cyon/ws/noticias/index.php
?>