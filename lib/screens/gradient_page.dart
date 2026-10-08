import 'package:flutter/material.dart';
import 'package:test_app/screens/halamandua_page.dart';

class GradientPage extends StatefulWidget {
  const new({super.key});

  @override
  State<GradientPage> createState() => _GradientPageState();
}

class _GradientPageState extends State<GradientPage> {
  final List<String> gambar = [
    "batik1.jpg",
    "batik2.jpg",
    "batik3.jpg",
  ];

  static const Map<String, Color> colors = {
    "batik1": Color(0xFF2DB569),
    "batik2": Color(0xFFF386B8),
    "batik3": Color(0xFF45CAF5),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [Colors.white, Colors.purpleAccent, Colors.deepPurple],
          ),
        ),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
              child: Material(
                elevation: 8.0,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Hero(
                      tag: gambar[i],
                      child: Material(
                        child: InkWell(
                          child: Flexible(
                            flex: 1,
                            child: Container(
                              color: colors.values.elementAt(i),
                              child: Image.asset(
                                "assets/image/${gambar[i]}",
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          onTap: ()=> Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => HalamanDua(
                                gambar: gambar[i],
                                colors: colors.values.elementAt(i),
                              )
                            )
                          ),
                        )
                      )
                    )
                  ],
                ),
              ));
          },
        ),
      ),
    );
  }
}
