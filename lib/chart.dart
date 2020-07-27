import 'package:bytecode/main.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyChart(),
    );
  }
}

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var pieData = [
      Task('Work', 53, Colors.blueAccent),
      Task('Food', 18, Colors.red),
      Task('Entertainment', 12, Colors.green),
      Task('Sleep', 17, Colors.yellow),
    ];

    _seriesPieData.add(
      charts.Series(
        data: pieData,
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Daily task',
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blueGrey,
          size: 30,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.blueGrey,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: Text(
            'My Expenses',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.blueGrey),
          ),
        ),
        SizedBox(height: 10),
        Text(
          '   Summary (private)',
          style: TextStyle(color: Colors.grey),
        ),

        SizedBox(height: 20),

        Row(
          children: <Widget>[
            Container(
                child: IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      size: 18,
                    ),
                    onPressed: null)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '07 Feb, 2019',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                      fontSize: 16),
                ),
                Text(
                  '18% more than last month',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'CATEGORIES',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '7 total',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red,
                ),
                child: IconButton(
                    icon: Icon(Icons.insert_chart,color: Colors.white,),
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Chart()),
                      );
                    }),
              ),
            ),
          IconButton(
                    icon: Icon(
                      Icons.list,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    })
          ],
        ),

//pie chart here

      
            Expanded(
                              child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        child: charts.PieChart(
                            _seriesPieData,
                            animate: true,
                            animationDuration: Duration(milliseconds: 500),
                            selectionModels: [
                              new charts.SelectionModelConfig(
                                type: charts.SelectionModelType.info,
                              )
                            ],
                            defaultRenderer: charts.ArcRendererConfig(
                                arcWidth: 80,
                                arcRendererDecorators: [
                                  charts.ArcLabelDecorator(
                                      labelPosition: charts.ArcLabelPosition.inside)
                                ]),
                          ),
                      ),
                    ),
                    
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '12',
                          style: TextStyle(color: Colors.blueGrey, fontSize: 30),
                        ),
                        Text(
                          'Expenses',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
                    SizedBox(height: 10),
                  ],
                ),
              
            ),
          
        

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Container(height: 10, width: 10, color: Colors.blueAccent),
              ),
              Text('Education',style: TextStyle(color: Colors.blueGrey),),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Text('94.00 USD-53%', style: TextStyle(color: Colors.blueGrey),),
              )
            ],
          ),
        ),

        Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 50, right: 50),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(height: 10, width: 10, color: Colors.white),
                  ),
                  Text('Beauty & Care',style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text('45.65 USD - 18%',style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 10, width: 10, color: Colors.red),
              ),
              Text('Child', style: TextStyle(color: Colors.blueGrey)),
              Padding(
                padding: const EdgeInsets.only(left: 110.0),
                child: Text('34.90 USD-17%', style: TextStyle(color: Colors.blueGrey)),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 10, width: 10, color: Colors.green),
              ),
              Text('Food', style: TextStyle(color: Colors.blueGrey)),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Text('12.54 USD - 12%', style: TextStyle(color: Colors.blueGrey)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
