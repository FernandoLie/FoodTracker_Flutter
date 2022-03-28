import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tracker/bloc/dinner/dinner_bloc.dart';
import 'package:food_tracker/bloc/lunch/lunch_bloc.dart';
import 'package:food_tracker/bloc/snack/snack_bloc.dart';

import '../bloc/breakfast/breakfast_bloc_bloc.dart';
import '../components/card_diary.dart';

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  int _totalkalori = 0;
  @override
  Widget build(BuildContext context) {
    List<Map> breakfastdata = context.select<BreakfastBlocBloc, List<Map>>(
        (value) => value.state.breakfastlist);
    List<Map> lunchdata =
        context.select<LunchBloc, List<Map>>((value) => value.state.lunchlist);
    List<Map> dinnerdata = context
        .select<DinnerBloc, List<Map>>((value) => value.state.dinnerlist);
    List<Map> snackdata =
        context.select<SnackBloc, List<Map>>((value) => value.state.snacklist);

    if (breakfastdata.isNotEmpty &&
        lunchdata.isNotEmpty &&
        dinnerdata.isNotEmpty &&
        snackdata.isNotEmpty) {
      for (int i = 0; i < breakfastdata.length; i++) {
        _totalkalori += int.parse(breakfastdata[i]['kalori']);
      }
      for (int i = 0; i < lunchdata.length; i++) {
        _totalkalori += int.parse(lunchdata[i]['kalori']);
      }
      for (int i = 0; i < dinnerdata.length; i++) {
        _totalkalori += int.parse(dinnerdata[i]['kalori']);
      }
      for (int i = 0; i < snackdata.length; i++) {
        _totalkalori += int.parse(snackdata[i]['kalori']);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Calories Remaining',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Text(
                _totalkalori.toString(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Calories Consumed',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              Text(
                '0',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 18,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CardDiary(
            gambar: 'assets/images/sunset.png',
            text: 'Breakfast',
            datanya: breakfastdata,
          ),
          const SizedBox(
            height: 10,
          ),
          CardDiary(
            gambar: 'assets/images/sun.png',
            text: 'Lunch',
            datanya: lunchdata,
          ),
          const SizedBox(
            height: 10,
          ),
          CardDiary(
            gambar: 'assets/images/moon.png',
            text: 'Dinner',
            datanya: dinnerdata,
          ),
          const SizedBox(
            height: 10,
          ),
          CardDiary(
            gambar: 'assets/images/Vector2.png',
            text: 'Snack/Other',
            datanya: snackdata,
          ),
        ],
      ),
    );
  }
}
