import 'package:flutter/material.dart';

import 'data/local/db_helper.dart';

class SqfliteHomePage extends StatefulWidget {
  const SqfliteHomePage({super.key});

  @override
  State<SqfliteHomePage> createState() => _SqfliteHomePageState();
}

class _SqfliteHomePageState extends State<SqfliteHomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance;
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes"), centerTitle: true),
      body:
          allNotes.isNotEmpty
              ? ListView.builder(
                itemCount: allNotes.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    leading: Text("${index + 1}"),
                    title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
                    subtitle: Text(
                      allNotes[index][DBHelper.COLUMN_NOTE_DESCRIPTION],
                    ),
                    trailing: SizedBox(
                      width: 70,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  titleController.text =
                                      allNotes[index][DBHelper
                                          .COLUMN_NOTE_TITLE];
                                  descriptionController.text =
                                      allNotes[index][DBHelper
                                          .COLUMN_NOTE_DESCRIPTION];
                                  return getBottomSheetWidget(
                                    isUpdate: true,
                                    sno:
                                        allNotes[index][DBHelper
                                            .COLUMN_NOTE_SNO],
                                  );
                                },
                              );
                            },
                            child: Icon(Icons.edit),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () async {
                              bool check = await dbRef!.deleteNote(
                                sno: allNotes[index][DBHelper.COLUMN_NOTE_SNO],
                              );
                              if (check) {
                                getNotes();
                              }
                            },
                            child: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
              : Center(child: Text("No Notes yet!!")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //note added from here
          showModalBottomSheet(
            context: context,
            builder: (context) {
              titleController.clear();
              descriptionController.clear();
              return getBottomSheetWidget();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getBottomSheetWidget({bool isUpdate = false, int sno = 0}) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            isUpdate ? "Update Note" : "Add Note",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 21),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: "Enter Title Here",
              labelText: "Title",
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
          ),
          SizedBox(height: 21),
          TextField(
            maxLines: 4,
            controller: descriptionController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              hintText: "Enter Description Here",
              labelText: "Description",
            ),
          ),
          SizedBox(height: 21),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                      side: BorderSide(width: 1),
                    ),
                  ),
                  onPressed: () async {
                    var title = titleController.text.toString();
                    var description = descriptionController.text.toString();
                    if (title.isNotEmpty && description.isNotEmpty) {
                      bool check =
                          isUpdate
                              ? await dbRef!.updateNote(
                                mTitle: title,
                                mDescription: description,
                                sno: sno,
                              )
                              : await dbRef!.addNote(
                                mTitle: title,
                                mDescription: description,
                              );
                      if (check) {
                        getNotes();
                      }
                      Navigator.pop(context);
                    }
                  },
                  child: Text(isUpdate ? "Update Note" : "Add Note"),
                ),
              ),
              SizedBox(width: 11),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                      side: BorderSide(width: 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {});
  }
}
