import 'package:flutter/material.dart';
import 'package:service_provider/widgets/my_appbar.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int? index;
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: GestureDetector(
          onTap: (() {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Drawer()));
          }),
          child: Icon(Icons.arrow_back_ios)),
      backgroundColor: Theme.of(context).primaryColor,
      data: Text("My Favourite", style: TextStyle(color: Colors.white)),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 350,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/male.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("My favourite"), Text("data")],
                    ),
                    GestureDetector(
                        onTap: () {
                          // onDeleted:
                          // () {
                          //   setState(() {
                          //     Container.removeWhere((Actor entry) {
                          //       return entry.name == actor.name;
                          //     });
                          //   });
                          //};
                        },
                        child: Icon(Icons.delete, color: Colors.grey))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/male.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("My favourite"), Text("data")],
                  ),
                  Icon(Icons.delete, color: Colors.grey)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/male.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("My favourite"), Text("data")],
                  ),
                  Icon(Icons.delete, color: Colors.grey)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
