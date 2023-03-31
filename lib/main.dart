import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ButtonClicked {
  static bool categoryClicked = false;
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // bottom navbar function
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> images = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      )
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      )
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      )
    ),
  ];

  final List<String> stockList = <String>['FREN', 'BRIS', 'TLKM', 'BBCA', 'BBRI', 'ANTM'];
  final List<String> stockComp = <String>['Smartfren Telecom Tbk.', "Bank Syariah Indonesia Tbk.", "Telkom Indonesia (Persero) Tbk.", "Bank Central Asia Tbk.", "Bank Rakyat Indonesia (Persero) Tbk.", "Aneka Tambang Tbk."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 40, 104, 255),
          leading: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          flexibleSpace: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 55, 0, 1),
                  padding: const EdgeInsets.fromLTRB(18, 1, 0, 0),
                  child: const Text(
                    "Total Investasi",
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      color: Colors.white,
                    )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 1, 0, 0),
                  child: const Text(
                    "Rp15.990.343",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                      color: Colors.white,
                    )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 4, 0, 0),
                  child: const Text(
                    "Total return - Rp21.256 (-0.11%)",
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      color: Colors.white,
                    )
                  ),
                ),
              ]
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ]
        ),
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: const Text(
                        "Buying Power",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                        width: 100,
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.all(5.0),
                      color: const Color.fromARGB(255, 232, 232, 232),
                      child: const Text(
                        "Deposit",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                        )
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 10.0),

                //  Reguler & Day Trading
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 210, 210, 210),
                            width: 1, 
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 5.0),
                              child: Text(
                                "Reguler",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500,
                                )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 3.0),
                              child: Text(
                                "Rp1.000.000",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                            ),
                          ]
                        )
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 210, 210, 210),
                            width: 1, 
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 5.0),
                              child: Text(
                                "Day Trading",
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500,
                                )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, top: 3.0),
                              child: Text(
                                "Rp5.000",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                            ),
                          ]
                        )
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 10.0),

                // Carousel Ads
                CarouselSlider(
                  items: images,
                  options: CarouselOptions(
                    height: 70,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  )
                ),
                const SizedBox(height: 10.0),

                // Search Bar
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 242, 242, 242)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Text(
                      "Search Bar"
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                
            //     Saham & Reksadana Card
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          ButtonClicked.categoryClicked = !ButtonClicked.categoryClicked;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.5, color: ButtonClicked.categoryClicked == true ? Colors.transparent : const Color.fromARGB(255, 40, 104, 255)),
                          ),
                        ),
                        child: Text(
                          "Saham",
                          style: TextStyle(
                            color: ButtonClicked.categoryClicked == true ? Colors.black : const Color.fromARGB(255, 40, 104, 255),
                            fontWeight: FontWeight.w500,
                          )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ButtonClicked.categoryClicked = !ButtonClicked.categoryClicked;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.5, color: ButtonClicked.categoryClicked == false ? Colors.transparent : const Color.fromARGB(255, 40, 104, 255)),
                          ),
                        ),
                        child: Text(
                          "Reksa Dana",
                          style: TextStyle(
                            color: ButtonClicked.categoryClicked == false ? Colors.black : const Color.fromARGB(255, 40, 104, 255),
                            fontWeight: FontWeight.w500,
                          )
                        ),
                      ),
                    )
                  ]
                ),
                const SizedBox(height: 10.0),

                // Title WatchList & Kode Sebelum Table
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 13.0,
                      backgroundColor: Color.fromRGBO(249, 248, 255, 1),
                      child: Center(
                        child: Icon(
                          Icons.add
                        )
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15.0),
                      padding: const EdgeInsets.all(5.0), 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue)
                      ),
                      child: const Text(
                        "Watchlist Saya",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                          color: Color.fromARGB(255, 40, 104, 255)
                        )
                      )
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Kode",
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                        width: 100,
                      )
                    ),
                    const Text(
                      "Price & Changes",
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                  ]
                ),
                const SizedBox(height: 2.0),
                const Divider(thickness: 1.0),
                const SizedBox(height: 2.0),//      

                // ListView Tabel Saham
                SizedBox(
                  height: 400.0,
                  child: Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                  
                      padding: const EdgeInsets.all(8.0),
                      itemCount: stockList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  stockList[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  )
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.amber,
                                    width: 100,
                                  )
                                ),
                                const Text(
                                  "9.999",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  )
                                ),
                              ]
                            ),
                            const SizedBox(height: 2.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  stockComp[index],
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                  )
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.amber,
                                    width: 100,
                                  )
                                ),
                                const Text(
                                  "+100%",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.green
                                  )
                                ),
                              ]
                            )
                          ]
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => const Divider(),
                    ),
                  ),
                ), 
              ]
            ),
          ),
        )
      ),
    
      // Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search
            ),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart
            ),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper,
            ),
            label: 'Kabar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 40, 104, 255),
        unselectedItemColor: const Color.fromARGB(255, 117, 117, 117),
        onTap: _onItemTapped,
      ),
    );
  }
}
