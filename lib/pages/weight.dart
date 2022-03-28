import 'package:flutter/material.dart';
import 'package:food_tracker/components/stacked_chart.dart';
import 'package:food_tracker/constanta.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Weight extends StatelessWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<charts.Series<TimeSeriesSales, DateTime>> seriesList = [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: [
          TimeSeriesSales(DateTime(2022, 1, 1), 100),
          TimeSeriesSales(DateTime(2022, 2, 1), 100),
          TimeSeriesSales(DateTime(2022, 3, 1), 100),
          TimeSeriesSales(DateTime(2022, 4, 1), 80),
        ],
      )
    ];

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 220,
              color: greendefault(),
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 180,
                  color: greenmuda(),
                  child: Text('80 kg',
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Last Weight In - Today',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Start :',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: greenmuda(),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '100 kg',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(fontSize: 24),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Goal :',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: greenmuda(),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '50 kg',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(fontSize: 24),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lost so far:  20kg',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 14),
                  ),
                  Text(
                    'Still to go:  30 kg',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: size.width,
                height: 200,
                child: StackedAreaCustomColorLineChart(seriesList)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '2022',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '16 March',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '80 Kg',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            const Icon(
                              Icons.arrow_downward,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01 March',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '83 Kg',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            Container()
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
