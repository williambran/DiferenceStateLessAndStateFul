import 'package:flutter/material.dart';

import 'miswitwidget.dart';

void main() {
  runApp(Tep());
}


/*
class Tep extends StatelessWidget {

  @override
  Widget build(BuildContext context)  => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Listas"),
        backgroundColor: Color.fromARGB(255, 200, 150, 255),),
      body: ListView(
        children: [

          chatWito("hola", "primero", "https://i.blogs.es/b6d70c/rick-y-morty/840_560.jpeg"),
          chatWito("hola2", "segundo", "https://media.cnnchile.com/sites/2/2019/07/1505975578830-1505732141447-rnm-740x430.jpeg")
        ],
      ),
    ),
  );

}
*/

/*
var chatWito =
ListTile(
  leading: CircleAvatar(backgroundImage: NetworkImage("https://i.blogs.es/b6d70c/rick-y-morty/840_560.jpeg"),) ,
  title: Text("William"),
  subtitle: Text("Hola buenas tardes"),
  trailing: Text("6:31"),
);*/




class Tep extends StatefulWidget {

  @override
  _TepState createState() => _TepState();
}

class _TepState extends State<Tep> {
  int i = 10;
  Color colorBody = Colors.white;
  double anchoImagen = 100;

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      backgroundColor: colorBody,
      appBar: AppBar(title: Text("Widget con estados $i"),),
      body:
          Column(
            children: [
              
              ClipRRect(
                  child: Image.network("https://i.pinimg.com/736x/54/de/4a/54de4a05ae065700984b78de491521a1.jpg",width:anchoImagen , ),
                borderRadius: BorderRadius.circular(15),
              ),
              
              
              ElevatedButton(child: Text("presionar"),
                  onPressed: () {

                    setState(() {
                      i++;
                      anchoImagen++ ;
                    });
                  }
              ),
              ElevatedButton(child: Text("Color negro"),
                  onPressed: () {

                    setState(() {
                      colorBody = Colors.black;
                    });
                  }
              ),
              ElevatedButton(child: Text("color azul"),
                  onPressed: () {

                    setState(() {
                      colorBody = Colors.blue;
                    });
                  }
              ),

              IconButton(onPressed: () {
                setState(() {
                   i--;
                   anchoImagen--;
                });
              },
                  icon: Icon(Icons.exposure_minus_1))

            ],
          ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_to_home_screen),
        onPressed: () {
          colorBody = Colors.white;
        },
      ),

    ),

  );
}



/*
class Tep extends StatefulWidget {
  const Tep({Key? key}) : super(key: key);

  @override
  _TepState createState() => _TepState();
}

class _TepState extends State<Tep> {
  var controladorCorreo = TextEditingController();
  var controladorPassword = TextEditingController();

  var correo = "";
  var password = "";

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Controllers"),),
        body :Padding(
          padding: EdgeInsets.all(8.8),
          child:
            SingleChildScrollView(
              child:           Column(
                children: [
                  TextField(
                    controller: controladorCorreo,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        labelText: "Nombre",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))


                    ),
                  ),
                  SizedBox( height: 20,),
                  TextField(
                    controller: controladorPassword,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        labelText: "Nombre",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))


                    ),
                  ),

                  SizedBox( height: 20,),

                  SizedBox(
                    width:  double.infinity,
                    child: ElevatedButton(
                      child: Text("Aceptar"),
                      onPressed: () {

                        setState(() {
                          correo = controladorCorreo.text;
                          password = controladorPassword.text;
                        });
                      },
                    )
                  ),

                  Text("Valores...$correo $password")


                ],
              ),
            )
        )


      ),
      );
}

*/




/*
class Tep extends StatefulWidget {
  const Tep({Key? key}) : super(key: key);

  @override
  _TepState createState() => _TepState();
}

class _TepState extends State<Tep> {
  var controladorCorreo = TextEditingController();
  var controladorPassword = TextEditingController();
  var controladorNumero1 = TextEditingController();
  var controladorNumero2 = TextEditingController();


  var numero1 = 0;
  var numero2 = 0;
  var result = 0;

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: Text("Controllers"),),
        body :Padding(
            padding: EdgeInsets.all(8.8),
            child:
            SingleChildScrollView(
              child:           Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: controladorNumero1,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        labelText: "numero 1",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))


                    ),
                  ),
                  SizedBox( height: 20,),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: controladorNumero2,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        labelText: "numero 2",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))


                    ),
                  ),

                  SizedBox( height: 20,),


                  SizedBox(
                      width:  double.infinity,
                      child: ElevatedButton(
                        child: Text("Sumar"),
                        onPressed: () {

                          setState(() {
                            numero1 = int.parse(controladorNumero1.text);
                            numero2 = int.parse(controladorNumero2.text) ;
                            result = numberReturn(numero1,numero2,1);
                          });


                        },
                      )
                  ),
                  SizedBox(
                      width:  double.infinity,
                      child: ElevatedButton(
                        child: Text("Restar"),
                        onPressed: () {

                          setState(() {
                          numero2 = int.parse(controladorNumero2.text);
                          numero1 = int.parse(controladorNumero1.text);
                          result = numberReturn(numero1,numero2,2);
                           });

                        },
                      )
                  ),
                  SizedBox(
                      width:  double.infinity,
                      child: ElevatedButton(
                        child: Text("Multilicar"),
                        onPressed: () {
                          setState(() {
                            numero2 = int.parse(controladorNumero2.text);
                            numero1 = int.parse(controladorNumero1.text);
                            result = numberReturn(numero1,numero2,3);
                          });
                        },
                      )
                  ),
                  SizedBox(
                      width:  double.infinity,
                      child: ElevatedButton(
                        child: Text("divir"),
                        onPressed: () {

                          setState(() {
                            numero2 = int.parse(controladorNumero2.text);
                            numero1 = int.parse(controladorNumero1.text);
                            result = numberReturn(numero1,numero2,4);
                          });


                        },
                      )
                  ),

                  Text("Valores...$result")


                ],
              ),
            )
        )


    ),
  );

  int numberReturn(int primer, int segundo, int operator) {
    int result = 0 ;
    switch (operator) {
      //suma
      case 1: {
        result = (primer + segundo) as int;
      }
        break;
      //resta
      case 2: {
        result = primer - segundo;
      }
        break;
      //multiplicar
      case 3: {
        result = primer * segundo;
      }
        break;
      //dividir
      case 4: {
        result =  (primer.toDouble() / segundo.toDouble()).toInt()  ;
      }

    }

    return result;
  }


}*/


