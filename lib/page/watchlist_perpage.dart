import 'package:flutter/material.dart';
// model
import 'package:untitled/model/model_watchlist.dart';
// lib
import 'package:untitled/drawer.dart';

class WatchListPerPage extends StatefulWidget{
    WatchListPerPage({Key? key, required this.detail})
      : super(key: key);

    var detail;

    @override
    State<WatchListPerPage> createState() => _WatchListPerPageState();
}

class _WatchListPerPageState extends State<WatchListPerPage> {

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text(''),
            ),
            drawer: CustomDrawer(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                  children: [
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Text(
                            '${widget.detail.title}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold)
                          ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Released Date: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text('${widget.detail.releaseDate}')
                        ]
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            "Rating: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          ),
                          Text("${widget.detail.rating} ✨")
                        ]
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            "Status: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          ),
                          if ('${widget.detail.watched}' == "true")...[
                            const Text("watched ⭕"),
                          ] else...[
                            const Text("not watched ❌")
                          ]
                        ]
                      ),
                      const SizedBox(height: 8),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Review: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          Text(
                              '${widget.detail.review}',
                              textAlign: TextAlign.justify)
                        ]
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      ElevatedButton(onPressed: () {
                          Navigator.pop(context);
                        },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              minimumSize: const Size.fromHeight(40),
                            ),
                            child: const Text(
                                  'Back',
                                  style:TextStyle(color: Colors.white)
                            )
                          ),
                  ]
              ),
            ),
        );
    }
}