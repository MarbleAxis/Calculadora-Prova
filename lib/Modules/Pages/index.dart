import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//Para começar o desenvolvimento desta paginida digite APENAS stf na tela sem nada e selecione a primeira opção, assim que selecionar
//vão aparecer para escrever em vários lugares ao mesmo tempo, use desta fução e APENAS digite 'HomePage'.
//Caso a opção de digitar a mesma coisa em vários lugares ao mesmo tempo não apareça, clique Ctrl + z, volte para tela em branco, e tente novamente.


//Peço desculpas pelo código mal feito, infelizmente foi o máximo que consegui, caso eu consiga mais alguma coisa envio pra vcs, mas
//espero que isso já ajude bastante :)

//OBS: Eu vi vários códigos completos na internet mas a maioria não englobava o que ele passou em aula por isto não utilizei e não recomendo
//utilizar pois do jeito que ele é se ele ver algo que não passou vai achar ruim, por isso, tentei fazer o mais parecido apenas com as opções
//que ele disponibilizou.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

//Declarando variáveis
class _HomePageState extends State<HomePage> {
  double valor2 = 0;
  double valor = 0.0;
  double auxiliar = 0;
  double resultado = 0.0;
  dynamic operacao;

//Definindo um valor inicial para o resultado
  @override
  void initState() {
    super.initState();
    resultado = 0.0;
  }


//inicio calculadora
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      appBar: AppBar(
        title: Row(children: [
          Icon(Icons.calculate),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Calculadora V2'),
          )
        ]),
      ),
      body:  
      //Corpo
      ListView(
        children: [
          Container(            
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    //Criando o visor da calculadora
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 0.5,                      
                          ),
                        ),
                        child: 
                        SizedBox(
                          height: 150,
                          width: 600,
                          child: Center(                            
                            child: 
                            Text('$valor' + ' $operacao ' + '$valor2' +' = $resultado',
                                style: 
                                TextStyle(
                                  fontSize: 30,
                                  color: Colors.teal[100]
                                )),
                          
                          )),
                        ),                      
                  ],
                ),
              ),
        ),
    
         
          //Botões
          //Row 1 - Row = Linha
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Botão 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                  //Aqui é onde se cria o botão
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ), // Essa parte do style ai é só um acréscimo, não é necessária
                    onPressed: () {
                      //No on pressed é onde será realizada as operações e atribuições de valores dos botões
                      operacao = '%';
                      double v1 = valor;
                        setState(() {
                          resultado = v1 / 100;
                        });    
                    },
                    child: const Text(
                      //Aqui é o que vai aparecer escrito no botão
                      '%',
                      style: 
                        
                        TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
              //Botão 2
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                SizedBox( 
                  height: 60,
                  width: 95,
                  child:  
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      //Lembre-se é no onPressed onde deverá ser feito a atribuição dos valores e calculos
                      operacao = ' ';
                      setState(() {
                        resultado = 0;
                        valor = 0;
                        valor2 = 0;
                        auxiliar = 0;
                      });
                    },
                    child: const Text(
                      'C',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    )
                    )),
              ),

              //Botão 3
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      operacao = '/';
                      double v1 = valor;
                      double v2 = valor2;
                      setState(() {
                        resultado = v1 / v2;
                      });
                    },
                    child: const Text(
                      '/',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                  SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        resultado = 0;
                      });
                    },
                      child: const Icon(
                        Icons.backspace_sharp,
                        size: 24
                      )
                    )),
              ),
            ],
          ),

          //Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Botão 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      //Como aqui não estou realizando nenhum calculo então vou apenas atribuir valores.
                      //Geralmente atribuímos esses valores no setState.                      
                      setState(() {
                        valor = 7;
                        valor2 = 7;               
                      });
                    },
                    child: const Text(
                      '7',
                      style:
                        TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
              //Botão 2
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                SizedBox( 
                  height: 60,
                  width: 95,
                  child:  
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 8;
                        resultado = 8;
                      });
                    },
                    child: const Text(
                      '8',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 3
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 9;
                        valor2 = 9;  
                      });
                    },
                    child: const Text(
                      '9',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                  SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      //Aqui esta um exemplo de operação, eu fiz assim mas acredito que há jeitos mais fáceis, fiquem a vontade para inovar.
                      operacao = 'x';
                      double v1 = valor;
                      double v2 = valor2;
                      setState(() {
                        resultado = v1 * v2;
                      });
                    },
                    child: const Text(
                      'x',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
            ],
          ),


          //Row 3
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Botão 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 4;
                        valor2 = 4;  
                      });
                    },
                    child: const Text(
                      '4',
                      style: 
                        
                        TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
              //Botão 2
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                SizedBox( 
                  height: 60,
                  width: 95,
                  child:  
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 5;
                        valor2 = 5;  
                      });
                    },
                    child: const Text(
                      '5',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 3
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 6;
                        valor2 = 6;  
                      });
                    },
                    child: const Text(
                      '6',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                  SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      operacao = '-';
                      double v1 = valor;
                      double v2 = valor2;
                      setState(() {
                        resultado = v1 - v2;
                      });
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
            ],
          ),

          //Row 4
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Botão 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 1;
                        valor2 = 1;
                      });
                    },
                    child: const Text(
                      '1',
                      style: 
                        
                        TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
              //Botão 2
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                SizedBox( 
                  height: 60,
                  width: 95,
                  child:  
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 2;
                        valor2 = 2;  
                      });
                    },
                    child: const Text(
                      '2',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 3
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 3;
                        valor2 = 3;  
                      });
                    },
                    child: const Text(
                      '3',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                  SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      operacao = '+';
                      double v1 = valor;
                      double v2 = valor2;
                      setState(() {
                        resultado = v1 / v2;
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
            ],
          ),

          //Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Botão 1
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      double v1 = valor;
                      double v2 = valor2;
                      setState(() {
                        v1 = -(v1);
                        v2 = -(v2); 
                      });
                    },
                    child: const Text(
                      '+/-',
                      style: 
                        
                        TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
              //Botão 2
              Padding(
                padding: const EdgeInsets.all(5),
                child:
                SizedBox( 
                  height: 60,
                  width: 95,
                  child:  
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        valor = 0;
                        valor2 = 0;  
                      });
                    },
                    child: const Text(
                      '0',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 3
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {

                      });
                    },
                    child: const Text(
                      ',',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4
              Padding(
                padding: const EdgeInsets.all(5),
                child: 
                  SizedBox( 
                  height: 60,
                  width: 95,
                  child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        resultado;
                      });
                    },
                    child: const Text(
                      '=',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),
            ],
          ) 
        
        ],
      ),
    );
  }
  
}
