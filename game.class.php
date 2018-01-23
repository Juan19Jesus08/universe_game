<?php  
session_start();
    /***********************************************************************************************************
        * CLASE UniverseGame
        * @VERSION 0.1
        * @AUTOR Juan Jesus
    ************************************************************************************************************/
	class UniverseGame
	{
		var $db=null;

        function __construct(){
            #code...
        }//end constructor
        /****************************************************************************    
        *****************************************************************************/
    /***************************************************************
	* Metodo para establecer la conexion a la base de datos
	* @var $this->db PDO Es la variable que tiene la conexion de la base de datos
	****************************************************************/	
		function conexion()
		{
			$usuario = 'Games';
			$contrasena ='juan';
			$dbname='universe_game';
			$sgbd='mysql';
			$host ='localhost';
			$this->db = new PDO($sgbd.':host='.$host.';dbname='.$dbname,$usuario,$contrasena);
		}//end conexion
		/*********************************************************************************************
		* metodo que obtine los datos de la base de datos y ponerlos en un arreglo
		* @param $sql String nombre de la tabla de la cual se quiere obtner los datos
		*@return $datos array() obtiene los datos de la tabla  
		**********************************************************************************************/

		function sqlArray($sql=null)
        {
            if(!empty($sql))
            {
                $this->conexion();
            $datos=array();
            foreach($this->db->query($sql ,PDO::FETCH_ASSOC) as $fila){//mete cada fila en un arreglo
                array_push($datos, $fila);
            }
            return $datos;   
            }  else 
            {
              die("Es necesario definir una consulta");
            }
            
        }//end sqlArray
        /*************************************************************************************
	* Metodo que recibe un arreglo asociativo de NxN y retorne una variable con el HTML y los datos
	necesarios para generar una tabla 
	* @param $arreglo array() arreglo asociativo con los valoes 
	*************************************************************************************/
	function arreglo_nxn ($arreglo)
      { 
                $tabla="";
                $tam=sizeof($arreglo);

            $tabla.= "<table border='2'>";
             $tabla.="<tr>";
             //solo para imprimir los titulos de la tabla
                foreach ($arreglo as $llave => $valor)//obtiene la llave y su valor
                {
                    foreach ($valor as $llave => $datos) {
                      $tabla.= "<th>".$llave."</th>";  
                    }
                    break;

                }
                    $tabla.= "</tr>";
            foreach($arreglo as $filas)
            {
          
                    $tabla.= "<tr>";
            foreach($filas as $dato)
                {
                    $tabla.= "<td>".$dato."</td>";
                }
                    $tabla.="</tr>";
            }
            $tabla.="</table>";

           return $tabla;
      }//end arreglo_nxn
      /*************************************************************************************
		* metodo que obtine el rol y los permisos de ese usuario
		* @param $email String email del usuario 
		*@return $datos array() obtiene los roles y permisos del  usuario

      ************************************************************************************/

       function credenciales  ($email)
        {
            $sql ="SELECT  u.email, p.id_permiso, p.permiso, r.id_rol, r.rol from usuario u inner join usuario_rol ur on u.email= ur.email inner join rol r on r.id_rol= ur.id_rol inner join rol_permiso rp on rp.id_rol= r.id_rol inner join permiso p on p.id_permiso= rp.id_permiso
                where u.email= '$email' ";

            $this ->conexion();
            
            $web = new UniverseGame;

            $array=$this-> sqlArray($sql);
            $rol=array ();
            $permiso=array ();

                foreach ($array as $key => $value) {
                array_push($rol,$value['rol']);
                array_push($permiso,$value['permiso']);             
                }
            $datos=array ( 'rol'=> array_unique($rol),
                            'permiso'=> array_unique($permiso));


        return $datos;  

        }//end credenciales
        /*************************************************************************************
		* metodo que checa si existe ese usuario para poder accesar  y  en caso de que no exista solo muestra mensajes de error
		* @param $email String email del usuario 
		* @param $contrasena String contraseña del usuario

      ************************************************************************************/

   function login ($email, $contrasena)
        {
            $contrasena=md5($contrasena);
            if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $sql="SELECT * FROM usuario WHERE email='$email' and contrasena = '$contrasena'";
                $this-> conexion();
                $usuario=array ();
                    foreach ($this->db->query($sql, PDO::FETCH_ASSOC) as $fila) {
                    array_push($usuario,$fila);
                    }
                    if (sizeof($usuario)) {
                        $_SESSION['validado']=true;
                        $_SESSION['usuario']=$usuario[0];
                        $credenciales =$this->credenciales($email);
                        $_SESSION['credenciales']=$credenciales;
                        }else
                    {
                        die('el usuario o contraseña es incorrecto');
                    }

            }else
            {
                die('El email es incorrecto');
            }
        }//end login

/*************************************************************************************
		* metodo que cierra sesion
      ************************************************************************************/

		function logout ()
		{
			session_destroy();
			header('Location: ../../index.html');
			
		} //end logout
		/*************************************************************************************
		* metodo que checa el rol del usuario 
		* @param $rol String rol del usuario
      ************************************************************************************/
		function checarrol($rol)
		{
			if (isset($_SESSION['validado'])) {
				if ($_SESSION['validado']) {
					$roles= $_SESSION['credenciales']['rol'];
					if (!in_array($rol,$roles)) {
						die('el usuario no tiene un rol permitido');
					}
				}else
				{
					die('usuario no valido');
				}
			}else
			{
				die('usuario no valido');
			}
		}//end logout
		/*************************************************************************************
		* metodo que checa el permiso del usuario 
		* @param $permiso String permiso del usuario
      ************************************************************************************/

		function checarpermiso($permiso)
		{
			if (isset($_SESSION['validado'])) {
				if ($_SESSION['validado']) {
					$permisos= $_SESSION['credenciales']['permiso'];
					if (!in_array($permiso,$permisos)) {
						die('el usuario no tiene un permiso permitido');
					}
				}else
				{
					die('usuario no valido');
				}
			}else
			{
				die('usuario no valido');
			}		
		}//end checarpermiso
		/*************************************************************************************
		* metodo que valida el rol del usuario 
		* @param $rol String rol del usuario
		*@return true or false si tiene ese rol  o no el usuario      ************************************************************************************/
		function validarrol($rol)
		{
			if (isset($_SESSION['validado'])) {
				if ($_SESSION['validado']) {
					$roles= $_SESSION['credenciales']['rol'];
					if (!in_array($rol,$roles)) {
						return false;
					}
				}else
				{
					return false;
				}
			}else
			{
				return false;
			}

			return true;
		}//validarrol
		/*************************************************************************************
		* metodo que valida el permiso del usuario para ver si tiene ese periso
		* @param $permiso String permiso del usuario
		*@return $true or false si tiene ese permiso o no el usuario
      ************************************************************************************/
		function validarpermiso($permiso)
		{
			if (isset($_SESSION['validado'])) {
				if ($_SESSION['validado']) {
					$permisos= $_SESSION['credenciales']['permiso'];
					if (!in_array($permiso,$permisos)) {
						return false;
					}
				}else
				{
					return false;
				}
			}else
			{
				return false;
			}
			return true;		
		}//end validarpermiso
		/*************************************************************************************
		* metodo que recupera el email
		* @param $email String email del usuario
		*@return $true or false si tiene ese permiso o no el usuario
      ************************************************************************************/
		function recuperar($email){
          $this -> conexion();
          $valido = true; 
          $valido = filter_var($email, FILTER_VALIDATE_EMAIL); 
          $usuario = array();
          if (filter_var($email, FILTER_VALIDATE_EMAIL)) { 
            $sql = "SELECT * from usuario where email ='$email'";
                   

               foreach($this -> db->query($sql, PDO::FETCH_ASSOC) as $fila) {
                array_push($usuario, $fila);
            
             }  
           if (sizeof($usuario )>0) {

                $contrasena_temp = md5($usuario[0]['contrasena'].rand(1,1000000));
               $sql = "update usuario set contrasena_temp = '$contrasena_temp' where email = '$email'";
               $this -> db -> exec($sql);
           } else{
             $valido = false;
           }
           if ($valido ) {
                      require '../../lib/phpmailer/PHPMailerAutoload.php';
                $mail = new PHPMailer;
                $mail->isSMTP();
                $mail->SMTPDebug = 2;
                $mail->Host = 'smtp.gmail.com';
                $mail->Port = 587;
                $mail->SMTPSecure = 'tls';
                $mail->SMTPAuth = true;
                $mail->Username = "padroncito.Car@gmail.com";
                $mail->Password = "padroncito1996";
                $mail->setFrom('padroncito.Car@gmail.com', 'Hotel Cyon');
                $mail->addAddress($email, 'Usuario cyon');
                $mail->Subject = 'Recuperar contraseña cyon';
                $mensaje = "Estimado usuario a solicitado cambiar su contraseña, por favor de click en el siguiente enlace
                http://localhost:8080/universegame/administrador/login/restablecer.php?email=$email&key=$contrasena_temp";

                $mail->msgHTML($mensaje);

                    if (!$mail->send()) {
                        echo "Mailer Error: " . $mail->ErrorInfo;
                    } else {
                        echo "Message sent!";
                      
                    }
                }
               }
     }//recuperar

     
	
	}//end class
?>