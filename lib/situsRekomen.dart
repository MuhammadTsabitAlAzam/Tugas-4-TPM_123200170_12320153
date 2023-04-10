import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data_film.dart';

class SitusRekomen extends StatefulWidget {
  const SitusRekomen({Key? key}) : super(key: key);

  @override
  State<SitusRekomen> createState() => _SitusRekomenState();
}

class _SitusRekomenState extends State<SitusRekomen> {
  List<DataFilm> _favoriteFilms = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Rekomendasi Film"),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: listFilm.length,
          itemBuilder: (context, index) {
            final DataFilm data = listFilm[index];
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
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if(listFilm[index].isFavorite == false){
                                      listFilm[index].isFavorite = true;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:  Text("Tambah Ke Favorit"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                    else {
                                      listFilm[index].isFavorite = false;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content:  Text("Hapus dari Favorit"),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    }
                                  }
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: data.isFavorite ? Colors.red : Colors.green,
                                ),
                                child: Text(data.isFavorite ? 'Hapus dari Favorite' : 'Tambahkan ke Favorite'),
                              ),
                              SizedBox(height: 20,),
                              ElevatedButton(
                                onPressed: _launchUrl,
                                child: Text("Link Buku"),
                              ),
                            ],
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
