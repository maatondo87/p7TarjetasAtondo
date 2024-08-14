import 'package:flutter/material.dart';

void main() => runApp(const TarjetaApp());

class TarjetaApp extends StatelessWidget {
  const TarjetaApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicio();
}

class _PaginaInicio extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplo de tarjetas"),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        shape: const StadiumBorder(),
        backgroundColor: Color(0xd205f2f2),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide.merge(
                  BorderSide(
                      width: 1.5, color: Colors.grey, style: BorderStyle.solid),
                  BorderSide(
                      width: 1.5,
                      color: Colors.grey,
                      style: BorderStyle.solid)),
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xffa1f406),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide.merge(
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid),
                          BorderSide(
                              width: 1.5,
                              color: Colors.grey,
                              style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Atondo is Cool',
                            style: TextStyle(
                                color: Color(0xff040500), fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(height: 100, width: 100, child: FlutterLogo())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
