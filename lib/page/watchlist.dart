import 'package:flutter/material.dart';

// function
import 'package:untitled/function/function_fetch_watchlist.dart';
// lib
import 'package:untitled/drawer.dart';
import 'package:untitled/page/watchlist_perpage.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const CustomDrawer(),
        body: FutureBuilder(
            future: fetchWatchData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Watch list kosong :(",
                        style: TextStyle(
                            color: Color(0xff59A5D8),
                            fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index)=> Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: (snapshot.data![index].fields.watched)
                                      ? Border.all(width: 3.5, color: Colors.blueAccent)
                                      : Border.all(width: 3.5, color: Colors.black)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  title: Text(
                                    "${snapshot.data![index].fields.title}",
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => WatchListPerPage(
                                                detail: snapshot.data![index].fields)),
                                    );
                                  },
                                ),
                              ],
                            ),
                          )
                      );
                    }
                  }
                }
            )
        );
      }
    }