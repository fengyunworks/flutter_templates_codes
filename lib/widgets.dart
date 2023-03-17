///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class Widgets extends StatelessWidget {
  final pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf4f4),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3a57e8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "AppBar",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xff212435),
          size: 24,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [ BottomNavigationBarItem(
      icon:  Icon(
        Icons.add,
        color: Color(0xff212435),
        size: 24,
      ),
      label: "Home",
    ),BottomNavigationBarItem(
          icon:  Icon(
            Icons.add,
            color: Color(0xff212435),
            size: 24,
          ),
          label: "Others",
        )],
        backgroundColor: Color(0xffffffff),
        currentIndex: 0,
        elevation: 8,
        iconSize: 24,
        selectedItemColor: Color(0xff3a57e8),
        unselectedItemColor: Color(0xff9e9e9e),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {},
      ),

      body: Align(
        alignment: Alignment(-1.0, -1.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Text",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          hintText: "Enter Text",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          filled: true,
                          fillColor: Color(0xfff2f2f3),
                          isDense: false,
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Color(0xffffffff),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color(0xff808080), width: 1),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Button",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        textColor: Color(0xff000000),
                        height: 40,
                        minWidth: 140,
                      ),

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
                        image:
                        NetworkImage("https://picsum.photos/250?image=9"),
                        height: 100,
                        width: 140,
                        fit: BoxFit.cover,
                      ),

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
                        image:
                        NetworkImage("https://picsum.photos/250?image=9"),
                        height: 100,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                      Checkbox(
                        onChanged: (value) {},
                        activeColor: Color(0xff3a57e8),
                        autofocus: false,
                        checkColor: Color(0xffffffff),
                        hoverColor: Color(0x42000000),
                        splashRadius: 20,
                        value: true,
                      ),
                      Radio(
                        value: "",
                        groupValue: "",
                        onChanged: (value) {},
                        activeColor: Color(0xff3a57e8),
                        autofocus: false,
                        splashRadius: 20,
                        hoverColor: Color(0x42000000),
                      ),
                      Icon(
                        Icons.add,
                        color: Color(0xff212435),
                        size: 24,
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {},
                        color: Color(0xff212435),
                        iconSize: 24,
                      ),
                      ListTile(
                        tileColor: Color(0x1f000000),
                        title: Text(
                          "Title",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          "Sub Title",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        dense: false,
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        selected: false,
                        selectedTileColor: Color(0x42000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                      ),

                      SwitchListTile(
                        value: true,
                        title: Text(
                          "Title",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          "Sub Title",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                        onChanged: (value) {},
                        tileColor: Color(0x1f000000),
                        activeColor: Color(0xff3a57e8),
                        activeTrackColor: Color(0xff92c6ef),
                        controlAffinity: ListTileControlAffinity.trailing,
                        dense: false,
                        inactiveThumbColor: Color(0xff9e9e9e),
                        inactiveTrackColor: Color(0xffe0e0e0),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        selected: false,
                        selectedTileColor: Color(0x42000000),
                      ),

                      CheckboxListTile(
                        value: false,
                        title: Text(
                          "title",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        subtitle: Text(
                          "subtitle",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        tileColor: Color(0x1f000000),
                        activeColor: Color(0xff3a57e8),
                        checkColor: Color(0xffffffff),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        onChanged: (value) {},
                        dense: false,
                        controlAffinity: ListTileControlAffinity.platform,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                        selected: false,
                        selectedTileColor: Color(0x42000000),
                      ),

                      SizedBox(
                        height: 16,
                        width: 16,
                      ),
                      Divider(
                        color: Color(0xff808080),
                        height: 16,
                        thickness: 0,
                        indent: 0,
                        endIndent: 0,
                      ),
                      CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(DateTime.now().year),
                        lastDate: DateTime(2050),
                        onDateChanged: (date) {},
                      ),
                      Container(
                        width: 130,
                        height: 50,
                        padding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: DropdownButton(
                          value: "Option 1",
                          items: ["Option 1"]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                          onChanged: (value) {},
                          elevation: 8,
                          isExpanded: true,
                        ),
                      ),
                      Chip(
                        labelPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                        label: Text("Chip View"),
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color(0xffffffff),
                        ),
                        backgroundColor: Color(0xff3a57e8),
                        elevation: 0,
                        shadowColor: Color(0xff808080),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            "https://picsum.photos/250?image=9",
                            fit: BoxFit.cover),
                      ),

                      Slider(
                        onChanged: (value) {},
                        value: 0,
                        min: 0,
                        max: 10,
                        activeColor: Color(0xff3a57e8),
                        inactiveColor: Color(0xff9e9e9e),
                      ),
                      RatingBar.builder(
                        initialRating: 2.75,
                        unratedColor: Color(0xff9e9e9e),
                        itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 5,
                        itemSize: 30,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        onRatingUpdate: (value) {},
                      ),
                      ImageIcon(
                        NetworkImage(
                            "https://image.flaticon.com/icons/png/512/281/281764.png"),
                        size: 24,
                        color: Color(0xff212435),
                      ),
                      Lottie.network(
                        "https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json",
                        height: 100,
                        width: 140,
                        fit: BoxFit.cover,
                        repeat: false,
                        animate: false,
                      ),

                      SwitchListTile(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Color(0xff3a57e8),
                        activeTrackColor: Color(0xff92c6ef),
                        inactiveThumbColor: Color(0xff9e9e9e),
                        inactiveTrackColor: Color(0xffe0e0e0),
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        showFieldAsBox: false,
                        fieldWidth: 40,
                        filled: true,
                        fillColor: Color(0x00000000),
                        enabledBorderColor: Color(0xffd6d6d6),
                        focusedBorderColor: Color(0xff3a57e8),
                        borderWidth: 2,
                        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        obscureText: false,
                        borderRadius: BorderRadius.circular(4.0),
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        onCodeChanged: (String code) {},
                        onSubmit: (String verificationCode) {},
                      ),
                      LinearProgressIndicator(
                          backgroundColor: Color(0xff808080),
                          valueColor: new AlwaysStoppedAnimation<Color>(
                              Color(0xff3a57e8)),
                          value: 0.5,
                          minHeight: 3),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(0),
                  shrinkWrap: false,
                  physics: ScrollPhysics(),
                  children: [],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: GridView(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.2,
                  ),
                  children: [],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, position) {
                          return Image.network(
                            "https://picsum.photos/200/300",
                            height: 300,
                            width: 200,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 15),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x1f000000),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 2000,
                    decoration: BoxDecoration(
                      color: Color(0x1fffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: RotatedBox(
                      quarterTurns: 0,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 100,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.zero,
                          child: Opacity(
                            opacity: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
