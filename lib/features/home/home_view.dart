import 'package:flutter/material.dart';

import 'package:line_icons/line_icon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        
        child: Container(
          
          decoration: BoxDecoration(
            color:  Color(0xFF773fff),
            borderRadius: BorderRadius.circular(20)),
          height: 150,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        
                        'Location' ,style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                    SizedBox(width: 360,),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){}, icon:LineIcon(Icons.navigation_sharp ,color: Colors.white,size: 20,))),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 350,
                        child: TextField(
                          decoration:InputDecoration(
                           
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'search',
                           prefixIcon:Icon(Icons.search ,size: 20,),
                            border: OutlineInputBorder(
                              
                              borderRadius: BorderRadius.all(Radius.circular(16))
                            )
                            ) ,
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
    
    );
  }
}
