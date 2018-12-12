import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  Widget menuIcon({
    @required Size deviceSize,
    @required String text,
    @required IconData icon,
  }) {
    return Container(
      height: 60.0,
      width: deviceSize.width / 5,
      padding: EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Icon(
              icon,
              color: Colors.grey[100],
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
    );
  }

  Widget mainMenuIcon({
    @required Size deviceSize,
    @required String text,
    @required String src,
  }) {
    return Container(
      padding: EdgeInsets.all(6.0),
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              child: Image.asset(src),
              foregroundColor: Colors.red,
              backgroundColor: Colors.white,
            ),
            width: 80.0,
            height: 80.0,
            padding: EdgeInsets.all(2.0), // borde width
            decoration: BoxDecoration(
              color: Colors.grey[200], // border color
              shape: BoxShape.circle,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget topMenu({
    @required Size deviceSize,
  }) {
    return Row(
      children: <Widget>[
        menuIcon(
          deviceSize: deviceSize,
          icon: Icons.remove_circle_outline,
          text: "Home",
        ),
        menuIcon(
          deviceSize: deviceSize,
          icon: Icons.work,
          text: "Deals",
        ),
        menuIcon(
          deviceSize: deviceSize,
          icon: Icons.monetization_on,
          text: "Finance",
        ),
        menuIcon(
          deviceSize: deviceSize,
          icon: Icons.account_balance_wallet,
          text: "Wallet",
        ),
        menuIcon(
          deviceSize: deviceSize,
          icon: Icons.signal_cellular_4_bar,
          text: "History",
        ),
      ],
    );
  }

  Widget balanceInfo() {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("OVO CASH",
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Rp",
                      style: TextStyle(
                        color: Color(0xffd0993c),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "12500",
                    style: TextStyle(
                      color: Color(0xffd0993c),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("OVO POINTS",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    " 0",
                    style: TextStyle(
                      color: Color(0xffd0993c),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
              Container(
                height: 50.0,
                width: 120.0,
                child: RaisedButton(
                  child: Text(
                    "TOP UP",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF14b8c7),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget stackedMenuIcon({
    @required Size deviceSize,
    @required String src,
    @required String text,
  }) {
    return Container(
      width: (deviceSize.width - 45) / 3,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 12.0),
            child: Image.asset(src),
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget stackedMenuSeparator() {
    return Container(
      height: double.infinity,
      width: 2.0,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4d2a86),
        elevation: 0.0,
        title: Container(
          child: Image.asset("res/images/ovo_logo.png"),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(FontAwesomeIcons.bell),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(250.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  topMenu(
                    deviceSize: deviceSize,
                  ),
                  Container(
                    height: 1.0,
                    color: Colors.grey[500],
                  ),
                  balanceInfo(),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 95.0,
                        color: Color(0xFF4d2a86),
                      ),
                      Positioned(
                        top: 50.0,
                        child: Container(
                          height: 45.0,
                          width: deviceSize.width,
                          color: Color(0xfffafafa),
                        ),
                      ),
                      Positioned(
                        top: 10.0,
                        left: 20.0,
                        child: Card(
                          child: Container(
                            height: 80.0,
                            width: deviceSize.width - 40,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                stackedMenuIcon(
                                  src: "res/images/transfer.png",
                                  text: "Transfer",
                                  deviceSize: deviceSize,
                                ),
                                stackedMenuSeparator(),
                                stackedMenuIcon(
                                  src: "res/images/scan.png",
                                  text: "Scan",
                                  deviceSize: deviceSize,
                                ),
                                stackedMenuSeparator(),
                                stackedMenuIcon(
                                  src: "res/images/user_id.png",
                                  text: "OVO ID",
                                  deviceSize: deviceSize,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/listrik.png",
                          text: "PLN",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/pulsa.png",
                          text: "Pulsa",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/paket_data.png",
                          text: "Paket Data",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/pasca_bayar.png",
                          text: "Pasca Bayar",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/bpjs.png",
                          text: "BPJS",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/tv_kabel.png",
                          text: "TV Kabel",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/asuransi.png",
                          text: "Asuransi",
                        ),
                        mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "res/images/lihat_semua.png",
                          text: "Lihat Semua",
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      height: 140.0,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            child: Container(
                              width: 340.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("res/images/banner2.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              width: 350.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("res/images/banner1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
