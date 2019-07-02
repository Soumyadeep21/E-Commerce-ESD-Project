import 'package:e_commerce/cart_page.dart';
import 'package:e_commerce/categories.dart';
import 'package:e_commerce/home.dart';
import 'package:e_commerce/local_stores.dart';
import 'package:e_commerce/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Pages { home, categories, suggestions, localStore }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Pages selectedPage;
  @override
  void initState() {
    super.initState();
    selectedPage = Pages.categories;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrine'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => CartPage()));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Soumyadeep Sinha'),
              accountEmail: Text('soumo.sinha21@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  'S',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff2c3e50), Color(0xffbdc3c7)],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              onTap: () {
                setState(() {
                  selectedPage = Pages.home;
                });
                Navigator.of(context).pop();
              },
              selected: selectedPage == Pages.home,
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                setState(() {
                  selectedPage = Pages.categories;
                });
                Navigator.of(context).pop();
              },
              selected: selectedPage == Pages.categories,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.thumbtack),
              title: Text('Suggestions'),
              onTap: () {
                setState(() {
                  selectedPage = Pages.suggestions;
                });
                Navigator.of(context).pop();
              },
              selected: selectedPage == Pages.suggestions,
            ),
            ListTile(
              leading: Icon(Icons.store),
              title: Text('Local Stores'),
              onTap: () {
                setState(() {
                  selectedPage = Pages.localStore;
                });
                Navigator.of(context).pop();
              },
              selected: selectedPage == Pages.localStore,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => CartPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('My Wishlist'),
            ),
            ListTile(
              leading: Icon(Icons.move_to_inbox),
              title: Text('My Orders'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('App Settings'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
          ],
        ),
      ),
      body: pageBuilder(),
      floatingActionButton: selectedPage == Pages.suggestions
          ? FloatingActionButton(
              child: Icon(Icons.chat),
              onPressed: () {},
            )
          : null,
    );
  }

  Widget pageBuilder() {
    switch (selectedPage) {
      case Pages.home:
        return Home();
        break;
      case Pages.categories:
        return Categories();
        break;
      case Pages.suggestions:
        return Suggestions();
        break;
      case Pages.localStore:
        return LocalStores();
        break;
      default:
        return Center(
          child: Text('ERROR!'),
        );
    }
  }
}
