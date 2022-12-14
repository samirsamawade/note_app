import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  void getNotes() async {
    final notesReff = firestore.collection('notes');
    final data = await notesReff.get();

    print('Notes ...');
    print(data.size);
  }

  @override
  Widget build(BuildContext context) {
    getNotes();
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          'Note App',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.black54,
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              SearchNote(),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => NoteCard(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
