import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List l1 = [
    {
      'Block_No': 1,
      'content': 'Union home minister Amit Shah on Thursday announced that the ministry of home affairs (MHA) has decided that the Free Movement Regime (FMR) between India and Myanmar be'
    },{
      'Block_No': 2,
      'content': 'Union home minister Amit Shah on Thursday announced that the ministry of home affairs (MHA) has decided that the Free Movement Regime (FMR) between India and Myanmar be'
    },{
      'Block_No': 3,
      'content': 'Union home minister Amit Shah on Thursday announced that the ministry of home affairs (MHA) has decided that the Free Movement Regime (FMR) between India and Myanmar be'
    },{
      'Block_No': 4,
      'content': 'Union home minister Amit Shah on Thursday announced that the ministry of home affairs (MHA) has decided that the Free Movement Regime (FMR) between India and Myanmar be'
    },{
      'Block_No': 5,
      'content': 'Union home minister Amit Shah on Thursday announced that the ministry of home affairs (MHA) has decided that the Free Movement Regime (FMR) between India and Myanmar be'
    },


  ];




  String search ='';
  final _formKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search List Demo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(
                controller: searchController,
                // readOnly: true,
                decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    hintText: 'What would you like buy?',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.pan_tool_alt),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide())),
                        onChanged: (String? value){
                          print(value);
                          setState(() {
                            search = value.toString();
                          });
                        },
              ),
            ),

            Expanded(
                  child: ListView.builder(
                    itemCount: 400,
                    itemBuilder:
                        (BuildContext context,  index) {
                      late String position = index.toString();
                      if(searchController.text.isEmpty){
                        return ListTile(
                          leading: CircleAvatar(
                              child: Icon(Icons.person)),
                          title: Text("Hello Google " +index.toString() ),
                          subtitle: Text("This is subtitle"),
                          trailing: Icon(Icons.add),

                        );
                      }
                      else if(position.toLowerCase().contains(searchController.text.toLowerCase())){
                         return ListTile(
                          leading: CircleAvatar(
                              child: Icon(Icons.person)),
                          title: Text("Hello Google "+position  ),
                          subtitle: Text("This is subtitle"),
                           trailing: Icon(Icons.add),
                        );
                      }
                      else{
                        return Container();
                      }
                        },

                  ) )
          ],
        ),
      )

    );
  }
}
