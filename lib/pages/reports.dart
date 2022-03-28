import 'package:flutter/material.dart';
import 'package:food_tracker/constanta.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  String ispress = 'Today';
  @override
  Widget build(BuildContext context) {
    double lebarnya = 75;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
            child: SizedBox(
              width: 400,
              height: 40,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      ispress = 'Today';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ispress == 'Today' ? greendefault() : Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    width: lebarnya,
                    height: 40,
                    child: Text(
                      'Today',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              ispress == 'Today' ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      ispress = 'Week';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ispress == 'Week' ? greendefault() : Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    width: lebarnya,
                    height: 40,
                    child: Text(
                      'Week',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              ispress == 'Week' ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      ispress = 'Month';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ispress == 'Month' ? greendefault() : Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    width: lebarnya,
                    height: 40,
                    child: Text(
                      'Month',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color:
                              ispress == 'Month' ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      ispress = 'Custom';
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          ispress == 'Custom' ? greendefault() : Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    width: lebarnya,
                    height: 40,
                    child: Text(
                      'Custom',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: ispress == 'Custom'
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Total Calorie',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: greenopacity(),
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '77',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Cal',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromRGBO(161, 205, 244, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 20, right: 20),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          '0.56',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 18),
                        ),
                        Text(
                          '  g',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      'Carbs',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ]),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromRGBO(255, 89, 89, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 20, right: 20),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          '6.26',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 18),
                        ),
                        Text(
                          '  g',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      'Protein',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ]),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromRGBO(255, 249, 110, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 20, right: 20),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          '5.28',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 18),
                        ),
                        Text(
                          '  g',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      'Fat',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ]),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              'Percentage',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: 40,
                            child: Text(
                              'Cals (kcal)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Breakfast',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              '(100%)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '77',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lunch',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              '(0%)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '-',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dinner',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              '(0%)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '-',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Snacks',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            child: Text(
                              '(0%)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '-',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text('Foods Eaten',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Foods',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            child: Text(
                              'Times Eaten',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              'Cals (kcal)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Boiled Egg',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            child: Text(
                              'x1=',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '77',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            child: Text(
                              'x1=',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: Text(
                              '77',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
