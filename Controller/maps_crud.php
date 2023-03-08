<?php
#Chamando o arquivo conexao.php
include_once"conexao.php";
// #pegando o valor da ação via URL
 $acao = $_GET['acao'];
 if(isset($_GET['id'])){
    #Criando uma variavel para armazenar o valor obtido no GET
    $id = $_GET['id'];
}

switch($acao){
    
    case 'salvar':
    $OrinLat = $_POST['OrinLat'];
    $OrinLon = $_POST['OrinLon'];
    $DestLat = $_POST['DestLat'];
    $DestLon = $_POST['DestLon'];
    $Endereco = $_POST['Endereco'];

            $sqlInsert = "INSERT INTO Enderecos (OrinLat, OrinLon, DestLat, DestLon, Endereco) 
            values ('$OrinLat', '$OrinLon', '$DestLat', '$DestLon', '$Endereco')";

    if (!mysqli_query($conexao,$sqlInsert)) {
        die("Erro ao cadastrar Endereço: ".mysqli_error($conexao));
    }else{
    echo "<script language='javascript' type='text/javascript'>
    alert('Endereço cadastrado com sucesso!')
    window.location.href='maps_crud.php?acao=selecionar'</script>";
    }
    break;

             
        case 'calcular':
            
        date_default_timezone_set('America/Sao_Paulo');
        #header("Content-type: text/html;charset=utf-8");
        include_once "conexao.php";
        

        
        echo "

        <!DOCTYPE html>
                <html lang='pt_br'>
    <head>
    <link href='index.css' rel='stylesheet'>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Rotas</title>
</head>
<body>
	   
<div class='container' id='container'>
";


 
        $OrinLat = $_POST['OrinLat'];
        $OrinLon = $_POST['OrinLon'];
        $DestLat = $_POST['DestLat'];
        $DestLon = $_POST['DestLon'];
        
        
  
  echo "
 
 </script>
    <script src='http://maps.google.com/maps/api/js?sensor=false'></script>
    <div style='padding: 10px 0 0; clear: both'>
      <iframe width='750' scrolling='no' height='350' frameborder='0' id='map' marginheight='0' marginwidth='0' src='https://maps.google.com/maps?saddr=$OrinLat,$OrinLon&daddr=$DestLat,$DestLon&output=embed'></iframe>
    </div>
</html>
 <a class='button' href='home.php'> Voltar </a>
";
         
            mysqli_close($conexao);
        
        
             break;
             
       case 'selecionar':
        date_default_timezone_set('America/Sao_Paulo');
        #header("Content-type: text/html;charset=utf-8");
        include_once "conexao.php";
        

               echo "
        <!DOCTYPE html>
                <html lang='pt_br'>
    <head>
    <link href='index.css' rel='stylesheet'>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Rotas Cadastradas</title>
</head>
<body>
<div class='container' id='container'>";
        echo "<form method='post' action='TelaInicial.html' name='dados' onSubmit='return enviardados();'>";
        echo "<CENTER><h2>ROTAS CADASTRADAS</H2>";
        echo "<meta charset='UTF-8'>";
        echo "<center><table border=1>";
        echo "<tr>";
        echo "<th>ID</th>";
        echo "<th>ENDEREÇO</th>";
        echo "<th>AÇÃO</th>";
        echo "</tr>";
        
   $sqlSelect = "SELECT * FROM Enderecos";
        $resultado = mysqli_query($conexao, $sqlSelect) or die ("Erro ao retornar dados");
        
        
          while ($registro = mysqli_fetch_array($resultado)){
            $Endereco = $registro['endereco'];
            $id = $registro['idEndereco'];
          
           echo "
        
			<tr>
            <td>". $id . "</td>
            <td>". $Endereco . "</td>
            <td><a href='maps_crud.php?acao=deletar&id=$id'>Deletar</a>
            </tr>
        
			
			";
          }
            echo "</tr>";
           
           
        
         echo"</table>";
         echo "<br>";
         echo "<button type='submit' name='action' formaction='home.php'>Voltar</button></br>";
         echo"<br>";
         echo "<button>Inicio</button><br>
         
         
         
</body>
</html>";
        
        mysqli_close($conexao);
        
        
        break;
        
         case 'deletar':
        date_default_timezone_set('America/Sao_Paulo');
        #header("Content-type: text/html;charset=utf-8");
        include_once "conexao.php";
        
        
         $sqlDelete = "DELETE FROM Enderecos WHERE idEndereco = '" . $id . "'";
         
        
        if (!mysqli_query($conexao, $sqlDelete)){
            die ('Error: '.mysqli_error($conexao));
        }else{
            echo "<script language='javascript' type='text/javascript'>
            alert('Contato excluído com sucesso!')
            window.location.href='maps_crud.php?acao=selecionar'</script>";
        }
        mysqli_close($conexao);
        header("Location:cad_eversafely_page.php");
        
        break;
      
    default:
       // header("Location:index.html");
        break;
}


?>