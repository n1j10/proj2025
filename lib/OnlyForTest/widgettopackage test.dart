import 'package:flutter/material.dart';
class CustomChoseUser extends StatelessWidget {
  const CustomChoseUser({
    Key? key, required this.title,
    required this.txt,
    required this.icon,
    required this.isActive,
    this.onTap
  }) : super(key: key);
  final String title;
  final String txt;
  final IconData icon;
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 345,
            height: 159,
      decoration: BoxDecoration(
        color: isActive==true ? Colors.lightBlueAccent:Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Row(
                    children: [
                      Icon(icon),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,

                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            txt,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ] ,
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}