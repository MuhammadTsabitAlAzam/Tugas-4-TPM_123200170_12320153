import 'package:flutter/material.dart';
import 'data_film.dart';
import 'package:url_launcher/url_launcher.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Daftar Favorites"),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: listFilm.where((element) => element.isFavorite == true).toList().length,
          itemBuilder: (context, index) {
            List film = listFilm.where((element) => element.isFavorite == true).toList();
            DataFilm data = film[index];
            final Uri _url = Uri.parse(data.link);

            void _launchUrl() async {
              if (await launchUrl(_url)) throw 'Could not launch $_url';
            }
            return Center(
              child: Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.network(
                        data.imageLink,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: _launchUrl,
                            child: Text("Link Buku"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
