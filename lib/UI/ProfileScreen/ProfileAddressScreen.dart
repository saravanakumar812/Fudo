import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:untitled/Controller/ProfileScreenController/ProfileAddressScreen.dart';

import '../../Components/Button.dart';
import '../../Components/CommonListTile.dart';
import '../../Components/forms.dart';
import '../../Components/theme.dart';
import '../../Controller/ProfileScreenController/ProfileAddressScreen.dart';

class ProfileAddressScreen extends GetView<ProfileAddressScreenController> {
  const ProfileAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ProfileAddressScreenController controller =
        Get.put(ProfileAddressScreenController());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset("assets/icons/back_Icon.png")),
        leadingWidth: width * .2,
        title: Text(
          "Address",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Image.asset("assets/icons/Profile_icon.png"),
          SizedBox(
            width: width * .05,
          )
        ],
      ),
      persistentFooterButtons: [
        Center(
          child: Button(
              widthFactor: 0.9,
              heightFactor: 0.06,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DefaultTabController(
                      length: 2,
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              TextInput(
                                  onPressed: () {},
                                  controller: controller.currentDateController,
                                  height: 100,
                                  isReadOnly: true,
                                  label: "Address",
                                  onTextChange: (text) {},
                                  textInputType: TextInputType.phone,
                                  textColor: Color(0xCC252525),
                                  hintText: "Enter your Address",
                                  sufficIcon: Icon(Icons.edit),
                                  obscureText: true),
                              SizedBox(height: height * 0.02,),
                              Center(
                                child: Button(
                                    widthFactor: 0.5,
                                    heightFactor: 0.06,
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "Add Address",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                "Add Address",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )),
        ),
      ],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: width,
              height: height * .1,
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CommonListTile(
                title: "Home",
                leadingIcon: ImageIcon(AssetImage("assets/icons/Location.png")),
                subtitle: "Prestige Song, Begur,68",
                trailingIcon: Icons.edit,
                onTap: () {
                  // Handle tap
                  print("Profile tapped");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: width,
              height: height * .1,
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CommonListTile(
                title: "Home",
                leadingIcon: ImageIcon(AssetImage("assets/icons/Location.png")),
                subtitle: "Prestige Song, Begur,68",
                trailingIcon: Icons.edit,
                onTap: () {
                  // Handle tap
                  print("Profile tapped");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: width,
              height: height * .1,
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CommonListTile(
                title: "Home",
                leadingIcon: ImageIcon(AssetImage("assets/icons/Location.png")),
                subtitle: "Prestige Song, Begur,68",
                trailingIcon: Icons.edit,
                onTap: () {
                  // Handle tap
                  print("Profile tapped");
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: width,
              height: height * .1,
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CommonListTile(
                title: "Home",
                leadingIcon: ImageIcon(AssetImage("assets/icons/Location.png")),
                subtitle: "Prestige Song, Begur,68",
                trailingIcon: Icons.edit,
                onTap: () {
                  // Handle tap
                  print("Profile tapped");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}






class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

TextEditingController controllerName = TextEditingController();
TextEditingController controllerContact = TextEditingController();

ContactList contactListFromJson(String str) =>
    ContactList.fromJson(json.decode(str));

String contactListToJson(ContactList data) => json.encode(data.toJson());

class ContactList {
  ContactList({required this.data});

  final List<Datum> data;

  factory ContactList.fromJson(Map<String, dynamic> json) => ContactList(
    data: List<Datum>.from(json["data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x)),
  };
}

class Datum {
  final String name;
  final List<String> contact;
  Datum({required this.name, required this.contact});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    name: json["name"],
    contact: List<String>.from(json["contact"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "greeting": name,
    "instructions": List<dynamic>.from(contact.map((x) => x)),
  };
}

class _ContactPageState extends State<ContactPage> {
  //List<ContactList> contacts = List.empty(growable: true);
  late ContactList contactList;
  bool isDataLoaded = false;
  String errorMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text('CONTACTS'),
          actions: [
            IconButton(
              onPressed: () {
                //var contact1 = controllerContact.text.trim();
                String name = controllerName.text.trim();
                List<String> contact =
                controllerContact.text.trim() as List<String>;
                if (name.isNotEmpty && contact.isNotEmpty) {
                  setState(() {
                    controllerName.text = '';
                    controllerContact.text = '';
                    contactList.data.add(Datum(name: name, contact: contact));
                  });
                }
              },
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                hintText: 'Contact name',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controllerContact,
              maxLength: 10,
              decoration: const InputDecoration(
                hintText: 'Contact number',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                fillColor: Colors.grey,
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            /*!isDataLoaded
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : errorMsg.isNotEmpty
                    ? Center(
                        child: Text(errorMsg),
                      )
                    : contactList.data.isEmpty
                        ? Center(
                            child: Text("data"),
                          )*/
            ListView.builder(
              itemCount: contactList.data.length,
              itemBuilder: (context, index) => getRow(index),
            )
          ]),
        ));
  }

  Widget getRow(int index) {
    //final Contact contacts;
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  contactList: contactList.data[index],
                ),
              ));
        },
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.contact_page),
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(contactList.data[index].name),
          //Text(contactList.data[index].contact),
        ]),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.contactList});
  final Datum contactList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${contactList.name}'),
      ),
      body: Column(children: [
        Text('${contactList.name}'),
        Text('${contactList.contact}'),
      ]),
    );
  }
}