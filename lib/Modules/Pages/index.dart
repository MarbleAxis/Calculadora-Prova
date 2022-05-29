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
  String conta = "";
  String resultado = "";
  TextEditingController operador = TextEditingController();

//inicio calculadora
@override
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
                            TextFormField(
                                controller: operador,
                                readOnly: true,
                                decoration: null,
                                style:                                 
                                TextStyle(        
                                  fontSize: 30,
                                  decoration: null,
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
                      //No on pressed é onde será realizada as operações e atribuições de valores dos botões e é basicamente assim que deve ser feito.
                        setState(() {
                          conta += '%';
                        });    
                        operador.text = conta;
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
                      conta = "";
                      resultado = conta;
                      operador.text = resultado;
                      setState(() {});
                    },
                    child: const Text(
                      'CE',
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
                      setState(() {
                        conta += "/";
                      });
                      operador.text = conta;
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
                      conta = conta.replaceRange(
                          conta.length - 1, null, "");
                      print(conta);
                      operador.text = conta;
                    },
                      child: const Icon(
                        Icons.backspace_sharp,
                        size: 24
                      )
                    )),
              ),
            ],
          ),

          //Row 2 -- Apartir daqui recomendo coipiar somente as operações que vocês julgarem necessários pois é basicamente copiar e colar
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
                      //Geralmente atribuímos esses valores no setState.                      
                      setState(() {
                        conta += 7.toString();
                      });
                      operador.text = conta;
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
                        conta += 8.toString();
                      });
                      operador.text = conta;
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
                        conta += 9.toString();
                      });
                      operador.text = conta;
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
                      setState(() {
                        conta += "x";
                      });
                      operador.text = conta;
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
                        conta += 4.toString();
                      });
                      operador.text = conta;
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
                        conta += 5.toString();
                      });
                      operador.text = conta;
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
                        conta += 6.toString();
                      });
                      operador.text = conta;
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
                      setState(() {
                        conta += "-";
                      });
                      operador.text = conta;
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
                        conta += 1.toString();
                      });
                      operador.text = conta;
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
                        conta += 2.toString();
                      });
                      operador.text = conta;
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
                        conta += 3.toString();
                      });
                      operador.text = conta;
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
                      setState(() {
                        conta += "+";
                      });
                      operador.text = conta;
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
                      setState(() {
                        conta += "+/-";
                      });
                      operador.text = conta;
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
                        conta += 0.toString();
                      });
                      operador.text = conta;
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
                        conta += ",";
                      });
                      operador.text = conta;
                    },
                    child: const Text(
                      ',',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromARGB(255, 7, 89, 100)),
                    ))),
              ),

              //Botão 4 -- Este é o botão de = e eu acho bem importante copiar como ele é feito mas não é necessário copiar tudo
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
                      conta = conta.replaceAll(",", "."); //Copiar daqui
                          if (conta.contains("/")) {
                            var nums = conta.split("/");
                            resultado =
                                (double.parse(nums[0]) / double.parse(nums[1]))
                                    .toString();
                            operador.text = resultado;
                          } //até aqui e só repetir conforme as operações a serem realizadas
                      else if (conta.contains("x")) {
                            var nums = conta.split("x");
                            resultado =
                                (double.parse(nums[0]) * double.parse(nums[1]))
                                    .toString();
                            operador.text = resultado;
                          } else if (conta.contains("+")) {
                            var nums = conta.split("+");
                            resultado =
                                (double.parse(nums[0]) + double.parse(nums[1]))
                                    .toString();
                            operador.text = resultado;
                          } else if (conta.contains("-")) {
                            var nums = conta.split("-");
                            resultado =
                                (double.parse(nums[0]) - double.parse(nums[1]))
                                    .toString();
                            operador.text = resultado;
                          }
                          else if (conta.contains("%")) {
                            var nums = conta.split("%");
                            resultado =
                                (double.parse(nums[0]) / 100).toString();
                            operador.text = resultado;
                          }
                          else if (conta.contains("+/-")) {
                            var nums = conta.split("+/-");
                                if (double.parse(nums[0]) > 0) { 
                                  resultado =  (-(double.parse(nums[0]))).toString();
                                }
                                else { 
                                  resultado =  ((double.parse(nums[0]))).toString();
                                }
                            operador.text = resultado;
                          }
                          setState(() {});
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
