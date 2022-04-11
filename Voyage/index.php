<!DOCTYPE html>
<html>

    <head>
      
        <meta charset="utf-8">
        <title>Accueil</title>
    
        <link rel="stylesheet" type="text/css" href="Styles/style.css">
    
    </head>
    
    <body>
    
        <!-- header -->
    
       
        <header class="header">
            <div class="container">
                <a href="index.php" class="logo"><img src="Images/logo.png" width=40px alt="logo du site" style="margin-top: 7px;"/></a> 
                <p class="logo" style="margin-left: 50px; margin-top: 0;">CVVEN</p>

                
                
                <nav class="menu">
                    <a href="index.php"> Accueil </a>
                    <a href="Voyage.php"> Hotels </a>
                    <a href="MesReserv.php"> Reservations </a>

                    <?php
                    session_start();

                    if (isset($_SESSION["login"]))
                    {
                        echo "<a style='margin-right: 40px;'>";
                        echo ($_SESSION["login"]);
                        echo "</a>";
                        echo "<a href='logout.php'><img src='Images/deconnexion.png' width=25px style='margin-top: 10px; position: absolute;'/></a>";
                    }
                    else
                    {
                        echo "<a href='SeConnecter.php'> Authentification </a>";
                    }
                    ?>
 
                </nav>

            </div>
        </header>
        <!-- fin header -->
    
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <center>


        <br>
        <br>
        <br>

        <table>
            <tr>

            <td width="">
                
            <img src="Images/titre.png" height="600" width=100% style='position: center;'/></a>

            </td>

            </tr>

        </table>

        </div>

        </center> 

 
        
        <div style="height: 300px;">
        

        </div>
        

        <footer id="footer">

            <center> 
            <br>
            <br>

            <hr style="color: #ffffff; width: 80%;">
            <br>
            Site CVVEN
            <br> 
            <br>
            Réalisé par Achraf fadli et HAKIM CHOURA
            <br>
            <br>
            <br>
            <br>
            </center> 

        </footer>
</body>
</html>
