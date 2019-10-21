import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
      );
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Statusbar Play',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Statusbar Play'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SystemUiOverlayStyle statusBarStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.black);
  @override
  Widget build(BuildContext context) {
    return
        // AnnotatedRegion(
        //   value: SystemUiOverlayStyle(statusBarColor: Colors.black),
        //   child:

        Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Status bar",
                  style: Theme.of(context).textTheme.title,
                ),

                /// STATUS BAR
                Text("statusBarColor"),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'statusBarColor: Colors.black',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(statusBarColor: Colors.black),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('statusBarColor: Colors.white'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(statusBarColor: Colors.white),
                    ),
                  ),
                ),

                Text("statusBarBrightness"),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'statusBarBrightness: Brightness.dark',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          statusBarBrightness: Brightness.dark),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('statusBarBrightness: Brightness.light'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          statusBarBrightness: Brightness.light),
                    ),
                  ),
                ),

                Text("statusBarIconBrightness"),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'statusBarIconBrightness: Brightness.dark',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          statusBarIconBrightness: Brightness.dark),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('systemNavigationBarColor: Colors.light'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          statusBarIconBrightness: Brightness.light),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                /// NAVIGATION
                Text(
                  "Navigation bar",
                  style: Theme.of(context).textTheme.title,
                ),
                Text("systemNavigationBarColor"),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text('systemNavigationBarColor: Colors.black',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarColor: Colors.black),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('systemNavigationBarColor: Colors.white'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarColor: Colors.white),
                    ),
                  ),
                ),

                Text("systemNavigationBarDividerColor"),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'ssystemNavigationBarDividerColor: Colors.black',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarDividerColor: Colors.black),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('systemNavigationBarDividerColor: Colors.white'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarDividerColor: Colors.white),
                    ),
                  ),
                ),

                Text(
                  "systemNavigationBarIconBrightness",
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'systemNavigationBarIconBrightness: Brightness.dark',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarIconBrightness: Brightness.dark),
                    ),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                      'systemNavigationBarIconBrightness: Brightness.light'),
                  onPressed: () => setState(
                    () => SystemChrome.setSystemUIOverlayStyle(
                      SystemUiOverlayStyle(
                          systemNavigationBarIconBrightness: Brightness.light),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                /// ANNOTATED REGION
                Text(
                  "AnnotatedRegion",
                  style: Theme.of(context).textTheme.title,
                ),
                Text("systemNavigationBarColor"),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text('systemNavigationBarColor: Colors.black',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarColor: Colors.black),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('systemNavigationBarColor: Colors.white'),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarColor: Colors.white),
                  ),
                ),

                Text("systemNavigationBarDividerColor"),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'ssystemNavigationBarDividerColor: Colors.black',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarDividerColor: Colors.black),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('systemNavigationBarDividerColor: Colors.white'),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarDividerColor: Colors.white),
                  ),
                ),

                Text(
                  "systemNavigationBarIconBrightness",
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Text(
                    'systemNavigationBarIconBrightness: Brightness.dark',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarIconBrightness: Brightness.dark),
                  ),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                      'systemNavigationBarIconBrightness: Brightness.light'),
                  onPressed: () => setState(
                    () => statusBarStyle = SystemUiOverlayStyle(
                        systemNavigationBarIconBrightness: Brightness.light),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // ),
    );
  }
}
