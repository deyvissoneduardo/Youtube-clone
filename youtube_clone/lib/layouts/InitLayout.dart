import 'package:flutter/material.dart';
import 'package:youtubeclone/api/Api.dart';
import 'package:youtubeclone/model/Video.dart';

class InitLayout extends StatefulWidget {

  /* recebendo dados da pesquisa*/
  String pesquisa;
  InitLayout( this.pesquisa );

  @override
  _InitLayoutState createState() => _InitLayoutState();
}

class _InitLayoutState extends State<InitLayout> {
  _listVideos(String pesquisa) {
    Api api = Api();
    return api.pesquisar( pesquisa );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listVideos( widget.pesquisa ),
      builder: (contex, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    List<Video> videos = snapshot.data;
                    Video video = videos[index];

                    return Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(video.image))),
                        ),
                        ListTile(
                          title: Text(video.title),
                          subtitle: Text(video.channel),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                  itemCount: snapshot.data.length);
            } else {
              return Center(
                child: Text("Nenhum dado a ser exibido!"),
              );
            }
            break;
        }
      },
    );
  }
}
