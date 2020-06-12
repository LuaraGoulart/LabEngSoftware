<%-- 
    Author     : luara goulart.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
      <head>        
          <style>
  h1{
  font-size: 40px;
  color: #474a51;
  padding: 2px 0 10px 0;
  font-family: Arial,sans-serif;
  font-weight: bold;
  text-align: center;
  padding-bottom: 30px;
  }
  h1:after{
  content: ' ';
  display: block;
  width: 100%;
  height: 2px;
  margin-top: 10px;
  background: linear-gradient(315deg, #000000 0%, #7f8c8d 74%);
 
}
input {
  outline: none;
}
select{
  text-align: center;
  margin-top: 4px;
  padding: 10px;  
  color: black; 
}
/*estilo dos input,  menos o checkbox */
input{
  width: 95%;
  margin-top: 4px;
  padding: 10px;    
  border: 1px solid #b2b2b2;
 
  -webkit-border-radius: 3px;
  border-radius: 3px;
 
  -webkit-box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
  box-shadow: 0px 1px 4px 0px rgba(168, 168, 168, 0.6) inset;
 
  -webkit-transition: all 0.2s linear;
  transition: all 0.2s linear;
}
  body{
            background: #FFF8DC;
        } 
/*estilo do botão submit */
#botao{ text-align: center;}
input[type="submit"]{
  width: 50%!important;
  cursor: pointer;  
  background: rgb(50, 130, 110);
  padding: 8px 5px;
  color:  #fff;
  font-size: 20px;  
  border: 1px solid #fff;   
  margin-bottom: 10px;  
  text-shadow: 0 1px 1px #333;
  -webkit-border-radius: 5px;
  border-radius: 5px;
 
  transition: all 0.2s linear;
}
 
/*estilo do botão submit no hover */
input[type="submit"]{
  background: #F4A460;
}

     </style>
      </head>
        <body>
            <h1> Calculadora </h1>
            <form method="get" 
                  action="soma.action">
         Numero: <input name="num1" type="text"/><br><br>
        <select name="operator">
            <option value="soma"> + </option>
            <option value="subtracao"> - </option>
            <option value="multiplicacao"> * </option>
            <option value="divisao"> / </option>
        </select><br><br>
        Numero <input name="num2" type="text"/><br><br>
        <div id="botao"><input type="submit" value="Calcular"><br></div>
       <a href="hist.action">Historico de Calculos</a>
            </form>
        </body>
    </html>
