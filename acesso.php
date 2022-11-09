<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Canteen Vibes</title>
    <link rel="icon" type="imagem/png" href="./favicon.ico" />
    <style>
         @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap');

         
        body{
            font-family: 'Nunito';
            background-color: rgb(226, 192, 140);
            overflow: hidden;
            margin: 0;
        }
        
        .box{
            color: rgb(102, 42, 13);
            position: absolute;
            top: 35%;
            left: 50%;
            transform: translate(-50%,-50%);
            padding: 15px;
            border-radius: 15px;
            width: 30%;
            align-items: center;
            margin-left: -300px;
        }
        
        legend{
            border: 1px solid dodgerblue;
            padding: 10px;
            text-align: center;
            background-color: red;
            border-radius: 8px;
        }
        .inputBox{
            position: relative;
        }
        .inputUser{
            background: none;
            border: none;
            border-bottom: 1px solid #615850;
            outline: none;
            color: black;
            font-size: 15px;
            width: 100%;
            letter-spacing: 2px;
        }
        .labelInput{
            position: absolute;
            top: 0px;
            left: 0px;
            pointer-events: none;
            transition: .5s;
        }
        .inputUser:focus ~ .labelInput,
        .inputUser:valid ~ .labelInput{
            top: -20px;
            font-size: 12px;
            color: dodgerblue;
        }
    
        #submit{
            background-color: rgb(102, 42, 13);
            width: 100%;
            border: none;
            padding: 15px;
            color: white;
            font-size: 15px;
            cursor: pointer;
            border-radius: 10px;
        }
        #back{
            text-decoration: none;
            margin-top: 50px;
            border: 2px solid #614933;
            border-radius: 15px;
            padding: 10px;
            color: #614933;
            
        }
        #back:hover{
            background: #614933;
            color: white;
        }
        hr{
            width: 2px;
            height: 700px;
            background-color: #614933;
            border: #614933;
            
        }
        #cafeeeee{
            margin-top: -575px;
            margin-left: 750px;
            width: 10px;
           
        }
        h1{
            margin-left: 150px;
        }
    </style>
</head>
<body>
   
    <div class="box">
        <form action="login.php" method="POST">
        <br><br><br>         
                <h1>Login</h1>
           
                <div class="inputBox">
                    <input type="text" name="email" id="email" class="inputUser" required>
                    <label for="email" class="labelInput">Email</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="password" name="senha" id="senha" class="inputUser" required>
                    <label for="senha" class="labelInput">Senha</label>
                </div><br>
                <input type="submit" name="submit" id="submit" Value="Entrar">      
                   
        </form>
    </div>
    <div><br><br>
        <hr><br>
    </div>
    <div id='cafeeeee'><img src='./cafeeeee.png'  height="350px" ></div>
</body>
</html>