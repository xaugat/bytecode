import 'package:bytecode/chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  

  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.blueGrey,size: 30,),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_horiz, color: Colors.blueGrey,size: 30,),
        )
        

      ],
      
      

      ),
      body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             
              Padding(
                padding: const EdgeInsets.only(left:15, top:5),
                child: Text('My Expenses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.blueGrey),),
              ),
              SizedBox(height:10),
              Text('   Summary (private)', style: TextStyle(color: Colors.grey),),

              SizedBox(height:20),
              
              Row(
                children: <Widget>[
                  Container(child: IconButton(icon: Icon(Icons.calendar_today,size: 18,), onPressed: null)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('07 Feb, 2019', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,fontSize: 16),),
                
                     
                      Text('18% more than last month', style: TextStyle(color: Colors.grey),),
                    
                           
                    ],
                  )
   
                  

                ],
              ),
              SizedBox(height:20),

             

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('CATEGORIES',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
              ),
              Row(
                children: <Widget>[
                   Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('7 total', style: TextStyle(color: Colors.grey),),

              ),

              Padding(
                padding: const EdgeInsets.only(left:200),
                child: IconButton(icon: Icon(Icons.insert_chart), onPressed: (){

                  
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Chart()),
  );
                    
                  
                }),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red,
                ),
                child: IconButton(icon: Icon(Icons.list,color: Colors.white,), onPressed: null)),


                ],

              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Card(
                        
                    
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.school, color: Colors.yellow,),
                            Text('  Education', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                    ),
                  ),
                      ),
                    Container(
                      width: 190,
                      child: Card(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.fastfood, color: Colors.lightBlueAccent,),
                            Text('  Nutrition', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                  ),
                    ),
                  

                  ],) 
                
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 500,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Card(
                    
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.child_friendly, color: Colors.greenAccent),
                            Text('  Child', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                    ),
                  ),
                      ),
                    Container(
                      width: 190,
                      child: Card(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.spa, color: Colors.redAccent,),
                            Text('  Beauty & Care', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                  ),
                    ),
                  

                  ],) 
                
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('MORE', style: TextStyle(fontSize: 10),),
                  Icon(Icons.keyboard_arrow_down,size: 12,),
                ],
              ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top:20),
              child: Text('INCOMING EXPENSES', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('12 total', style: TextStyle(color: Colors.grey),),
            ),
            // grid view starts

            Expanded(
                        child: ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            ),
          width: 300,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:13),
                      child: Icon(Icons.spa,color: Colors.red,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('BEAUTY & CARE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.redAccent),),
                    ),
                    
                 
                  ],
                ),
                
                
              ),
              SizedBox(height:20),
               Padding(
                 padding: const EdgeInsets.only(right: 100),
                 child: Text('Dermal Softening', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 20),),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Text('An effective antioxidant, protects the functionality of other vitamins, retains moisture and inhibits skin aging.', style: TextStyle(color: Colors.grey),),
               ),

               SizedBox(height:40),
               Padding(
                 padding: const EdgeInsets.only(right:210),
                 child: Text('LOCATION', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blueGrey),),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   
                   children: <Widget>[
                     Icon(Icons.location_on, color: Colors.grey,size: 15,),
                     Text('498-300 NW 59th Ct, Miami', style: TextStyle(fontSize: 10,color: Colors.grey),)
                   ],
                 ),
               ),
               SizedBox(height:20),

               Stack(   
                
                 children: <Widget>[
                   ClipRRect(
                     clipBehavior: Clip.antiAlias,
	borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        
                                        child: Padding(
                                          
                                          padding: const EdgeInsets.only(left: 90,right: 90, top: 15),
                                          child: Text('CONFIRM 12.54 USD', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.white),textAlign: TextAlign.center,),
                                        ),
                       
                      
                       height: 50,
                      
                       color: Colors.red,
                       
                     ),
                   )
                 ],
               )
               
              
            
            ],
          ),
        
        ),
    ),
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            ),
          width: 300,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:13),
                      child: Icon(Icons.spa,color: Colors.red,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('BEAUTY & CARE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.redAccent),),
                    ),
                    
                 
                  ],
                ),
                
                
              ),
              SizedBox(height:20),
               Padding(
                 padding: const EdgeInsets.only(right: 100),
                 child: Text('Dermal Softening', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 20),),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Text('An effective antioxidant, protects the functionality of other vitamins, retains moisture and inhibits skin aging.', style: TextStyle(color: Colors.grey),),
               ),

               SizedBox(height:40),
               Padding(
                 padding: const EdgeInsets.only(right:210),
                 child: Text('LOCATION', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blueGrey),),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   
                   children: <Widget>[
                     Icon(Icons.location_on, color: Colors.grey,size: 15,),
                     Text('498-300 NW 59th Ct, Miami', style: TextStyle(fontSize: 10,color: Colors.grey),)
                   ],
                 ),
               ),
               SizedBox(height:20),

               Stack(   
                
                 children: <Widget>[
                   ClipRRect(
                     clipBehavior: Clip.antiAlias,
	borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        
                                        child: Padding(
                                          
                                          padding: const EdgeInsets.only(left: 90,right: 90, top: 15),
                                          child: Text('CONFIRM 12.54 USD', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.white),textAlign: TextAlign.center,),
                                        ),
                       
                      
                       height: 50,
                      
                       color: Colors.red,
                       
                     ),
                   )
                 ],
               )
               
              
            
            ],
          ),
        
        ),
    ),Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            ),
          width: 300,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:13),
                      child: Icon(Icons.spa,color: Colors.red,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('BEAUTY & CARE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.redAccent),),
                    ),
                    
                 
                  ],
                ),
                
                
              ),
              SizedBox(height:20),
               Padding(
                 padding: const EdgeInsets.only(right: 100),
                 child: Text('Dermal Softening', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 20),),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: Text('An effective antioxidant, protects the functionality of other vitamins, retains moisture and inhibits skin aging.', style: TextStyle(color: Colors.grey),),
               ),

               SizedBox(height:40),
               Padding(
                 padding: const EdgeInsets.only(right:210),
                 child: Text('LOCATION', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.blueGrey),),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   
                   children: <Widget>[
                     Icon(Icons.location_on, color: Colors.grey,size: 15,),
                     Text('498-300 NW 59th Ct, Miami', style: TextStyle(fontSize: 10,color: Colors.grey),)
                   ],
                 ),
               ),
               SizedBox(height:20),

               Stack(   
                
                 children: <Widget>[
                   ClipRRect(
                     clipBehavior: Clip.antiAlias,
	borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        
                                        child: Padding(
                                          
                                          padding: const EdgeInsets.only(left: 90,right: 90, top: 15),
                                          child: Text('CONFIRM 12.54 USD', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.white),textAlign: TextAlign.center,),
                                        ),
                       
                      
                       height: 50,
                      
                       color: Colors.red,
                       
                     ),
                   )
                 ],
               )
               
              
            
            ],
          ),
        
        ),
    ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: 300,
    //     color: Colors.grey,
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: 300,
    //     color: Colors.green,
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: 300,
    //     color: Colors.grey,
    //   ),
    // )
  ],
),
            )
             
             
                          
              
            ],
          
      ),
    
     
    );
  }
}
