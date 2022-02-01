import 'package:flutter/material.dart';
import 'package:friendlyeat/Pages/WebPage.dart';
import 'package:loadmore/loadmore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "RefreshingPage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late GlobalKey<ScaffoldState> _scaffoldKey;
  int select = 0;

  int get count => list.length;

  List list = [
    "https://images.unsplash.com/photo-1535473895227-bdecb20fb157?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZGlubmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://media.istockphoto.com/photos/homemade-roasted-thanksgiving-day-turkey-picture-id495329828?b=1&k=20&m=495329828&s=170667a&w=0&h=61LJkDfi6RpBNVf9CcSj8vrTLZc6nQKgKcuMSomROmc=",
    "https://media.istockphoto.com/photos/pan-fried-duck-picture-id1081422898?b=1&k=20&m=1081422898&s=170667a&w=0&h=Ng5a5FU3zhnviVJbw64R4ehDyrRtb2KFvMZ1lOXm0hA=",
  ];
  List list1 = [
    "Dinner SteakHouse",
    "Dinner SteakHouse",
    "Dinner SteakHouse",
  ];
  List list2 = [
    "sushi",
    "Burgers",
    "chicken",
  ];
  List list3 = [
    "Siettle",
    "California",
    "Calarado",
  ];

  void initState() {
    super.initState();
    // _scaffoldKey = GlobalKey();
    // list.addAll(List.generate(30, (v) => v));
  }

  void load() {
    print("load");
    setState(() {
      list.addAll([
        "https://images.unsplash.com/photo-1594046243098-0fceea9d451e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fGRpbm5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
        "https://dutzu.com/wp-content/uploads/2020/02/Food-photography-DSC04326-Edit-Copy.jpg",
        "https://i.pinimg.com/originals/45/57/0d/45570d134f9ad84baa9b9e68afe30b37.jpg",
        "https://i.ndtvimg.com/i/2017-10/gourmet-620_620x350_71507112783.jpg",
        "https://sushi-master.uz/assets/images/nabory/set-zolotaya-rybka.jpg"
      ]);
      list1.addAll([
        "Dinner SteakHouse",
        "Dinner SteakHouse",
        "Dinner SteakHouse",
        "Dinner SteakHouse",
        "Dinner SteakHouse",
      ]);
      list2.addAll(["plow", "horizon", "sandwich", "fish", "guananji"]);
      list3.addAll(["Washington", "Paris", "New York", "Tokio", "Seul"]);
      print("data count = ${list.length}");
    });
  }

  // Local State to display items in listview
  // List _demoData = [];

  @override
  // void initState() {
  //   // initializing states
  //   // _demoData = [
  //   //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTixVbnExfWMRCAulbEYNAeT6w99TRO2KyaFlVxHohoSsla1fVXSC1afNla_jmExF5gu1Y&usqp=CAU",
  //   //   "https://images.unsplash.com/photo-1552423314-cf29ab68ad73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWwlMjBhcXNhJTIwbW9zcXVlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  //   //   "https://tatilsepeti.cubecdn.net/Files/TurResim/09033/tsr09033637666116893863897.jpg",
  //   //
  //   // ];
  //   _scaffoldKey = GlobalKey();
  //   super.initState();
  // }

  // This method will run when widget is unmounting
  // @override
  // void dispose() {
  //   // disposing states
  //   _scaffoldKey.currentState?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        backgroundColor: Colors.blue,

        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(),
              child: Image(
                image: NetworkImage(
                    "https://cdn.iconscout.com/icon/premium/png-256-thumb/fork-knife-2848111-2368576.png"),
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            const Text(
              'FriendlyEats',
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),bottom: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15, left: 5),
              // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
              //suffixIcon: Icon(Icons.remove_red_eye),
              prefixIcon: Icon(Icons.wifi),
              border: InputBorder.none,
              hintText: "All Restorans",
              labelStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              hintStyle: TextStyle(color: Colors.black),

              isCollapsed: false,
            ),
          ),
        ),
      ),
      ),
      body: Container(
        child: RefreshIndicator(
          child: LoadMore(
            isFinish: count >= 20,
            onLoadMore: _loadMore,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Stack(children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 0.5,
                          // has the effect of softening the shadow
                          spreadRadius: 0.5,
                          // has the effect of extending the shadow
                          offset: Offset(
                            5.0, // horizontal, move right 10
                            5.0, // vertical, move down 10
                          ),
                        )
                      ],
                    ),
                    height: 350,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: DecorationImage(
                              image: NetworkImage(list[index]),
                              fit: BoxFit.cover,
                            )),
                        alignment: Alignment.center,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          list1[index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.star),
                            color: Colors.yellow,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.star),
                            color: Colors.yellow,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.star),
                            color: Colors.yellow,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.star),
                            color: Colors.yellow,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.star_half_outlined),
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              list2[index],
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              list3[index],
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]);
              },
              itemCount: count,
            ),
            whenEmptyLoad: false,
            delegate: DefaultLoadMoreDelegate(),
            textBuilder: DefaultLoadMoreTextBuilder.english,
          ),
          onRefresh: _refresh,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, WebPage.id);

        },
      )
    );
  }

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    load();

    return true;
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    list.clear();
    list1.clear();

    load();
  }
}
