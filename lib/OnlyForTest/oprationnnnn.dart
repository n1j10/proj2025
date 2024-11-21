import 'package:flutter/material.dart';


class MApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text('Create a project',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              ///select textformfield
              // Text(
              //   'Select Required Qualifications',
              //   style: TextStyle(
              //     color: Color(0xFFD9D9D9),
              //     fontFamily: 'Poppins',
              //     fontWeight: FontWeight.w400,
              //     fontSize: 14.0,
              //     height: 1.5,
              //   ),
              // ),
              SizedBox(height: 10.0),
              Dropdown(),
              SizedBox(height: 20.0),
              DescriptionBox(),
              Spacer(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     PrimaryButton(onPressed: () {}),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}
class _DropdownState extends State<Dropdown> {
  String? _selectedQualification;
  bool _isExpanded = false;

  final List<String> _qualifications = [
    'UI/UX Designer',
    'Back-end',
    'Front-end',
    'Mobile app',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF3C97AF), width: 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedQualification ?? 'Select Qualification',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    height: 1.5,
                  ),
                ),
                // Image.network(
                //   'https://placeholder.pics/svg/24x24',
                //   width: 24,
                //   height: 24,
                // ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _qualifications.map((qualification) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedQualification = qualification;
                      _isExpanded = false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      qualification,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
///Enter Description for the project + (TextFormField)
class DescriptionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Description for the project',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              height: 1.5,
              color: Color(0xFFD9D9D9),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 187.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xFFBFBFBF),
                width: 1.0,
              ),
            ),
            child: TextField(
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



