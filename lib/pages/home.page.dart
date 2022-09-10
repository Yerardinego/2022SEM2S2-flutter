import 'package:calculadora/widgets/filabotones.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/Models/boton.model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textResultados = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.grey,
              child: Row(
                children: [
                  Text("operaciones"),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.grey[600],
            child: Row(
              children: [
                Text(textResultados),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //height: 100,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  filabotones([
                      BotonModel(titulo:"%", metodo:(){
                        setState(() {
                          textResultados+="%";
                      });
                      }),


                      BotonModel(titulo:"CE", metodo:(){
                        setState(() {
                          textResultados+="CE";
                      });
                      }),


                      BotonModel(titulo:"C", metodo:(){
                          setState(() {
                          textResultados+="C";
                      });
                      }),

                      BotonModel(titulo:"<-", metodo:(){
                          setState(() {
                          textResultados+="<-";
                      });
                      }),

                  ]),
                   filabotones([
                      BotonModel(titulo:"1/x", metodo:(){
                         setState(() {
                         textResultados+="1/x";
                      }); 
                      }),


                      BotonModel(titulo:"x2", metodo:(){
                          setState(() {
                          textResultados+="x2";
                      }); 
                      }),



                      BotonModel(titulo:"√", metodo:(){
                          setState(() {
                          textResultados+="√";
                      }); 
                      }),
                      BotonModel(titulo:"/", metodo:(){
                          setState(() {
                          textResultados+="/";
                      }); 
                      }),

                  ]),
                   filabotones([
                      BotonModel(titulo:"7", metodo:(){
                        setState(() {
                          textResultados+="7";
                      });
                      }),
                      BotonModel(titulo:"8", metodo:(){
                         setState(() {
                          textResultados+="8";
                      });
                      }),
                      BotonModel(titulo:"9", metodo:(){
                          setState(() {
                          textResultados+="9";
                      });
                      }),
                      BotonModel(titulo:"x", metodo:(){
                          setState(() {
                          textResultados+="x";
                      });
                      }),

                  ]),
                  filabotones([
                      BotonModel(titulo:"4", metodo:(){
                          setState(() {
                          textResultados+="4";
                        });
                        }),

                      BotonModel(titulo:"5", metodo:(){
                          setState(() {
                          textResultados+="5";
                        });
                        }), 

                      BotonModel(titulo:"6", metodo:(){
                        setState(() {
                          textResultados+="6";
                        });
                        }),

                      BotonModel(titulo:"-", metodo:(){
                        setState(() {
                          textResultados+="-";
                        });
                        }),
                      

                  ]),
                  filabotones([
                      BotonModel(titulo:"1", metodo:(){
                        setState(() {
                          textResultados+="1";
                        });
                        }),
                      BotonModel(titulo:"2", metodo:(){
                        setState(() {
                          textResultados+="2";
                        });
                        }),
                      BotonModel(titulo:"3", metodo:(){
                        setState(() {
                          textResultados+="3";
                        });
                        }),

                       BotonModel(titulo:"+", metodo:(){
                        setState(() {
                          textResultados+="+";
                        });
                        }),

                  ]),
                   filabotones([
                      BotonModel(titulo:"+/-", metodo:(){
                          setState(() {
                          textResultados+="+/-";
                        });
                      }),

                      
                      BotonModel(titulo:"0", metodo:(){
                        setState(() {
                          textResultados+="0";
                        });
                        }),
                      BotonModel(titulo:".", metodo:(){
                          setState(() {
                          textResultados+=".";
                        });
                      }),

                      
                      BotonModel(titulo:"=", metodo:(){
                             setState(() {
                          textResultados+="=";
                        });
                      }),

                  ]),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
