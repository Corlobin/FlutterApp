import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './views/video_cell.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // Private variable uses _ before the name
  var _isLoading = true;
  var _url = "http://api.letsbuildthatapp.com/youtube/home_feed";
  var _videos;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  _fetchData() async {
    print("Retrivin data");
    final response = await http.get(_url);
    if (response.statusCode == 200) {
      final map = json.decode(response.body);

      setState(() {
        _isLoading = false;
        _videos = map["videos"];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text("REAL WORLD APP BAR"),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.refresh),
                  onPressed: () {
                    print("Reloading ...");

                    _fetchData();
                  },
                )
              ],
            ),
            body: new Center(
                child: _isLoading
                    ? new CircularProgressIndicator()
                    : new ListView.builder(
                        itemCount:
                            this._videos != null ? this._videos.length : 0,
                        itemBuilder: (context, i) {
                          final video = this._videos[i];
                          return new FlatButton(
                            padding: new EdgeInsets.all(0.0),
                            child: new VideoCell(video),
                            onPressed: () {
                              Navigator.push(context, 
                                new MaterialPageRoute(
                                  builder: (context) => new DetailPage()
                                ));
                            },
                          );
                          return new VideoCell(video);
                        }))));
  }
}


class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail page"),
      ),
      body: new Center(
        child: new Text("Detail detail detail"),
      )
    );
  }
  
}