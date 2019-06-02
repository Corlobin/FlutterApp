import 'package:flutter/material.dart';
import '../detail.dart';
import './video_cell.dart';

class VideoList extends StatelessWidget {
  var _videos;
  VideoList(this._videos);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: this._videos != null ? this._videos.length : 0,
      itemBuilder: (context, i) {
        final video = this._videos[i];
        return new FlatButton(
          padding: new EdgeInsets.all(0.0),
          child: new VideoCell(video),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new DetailPage()));
          },
        );
      },
    );
  }
}