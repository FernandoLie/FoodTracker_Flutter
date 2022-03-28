import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tracker/bloc/breakfast/breakfast_bloc_bloc.dart';

import '../constanta.dart';

class CardListFood extends StatefulWidget {
  const CardListFood({
    Key? key,
    required this.nama,
    required this.ukuran,
    required this.kalori,
    required this.kaloritext,
  }) : super(key: key);

  final String nama, ukuran, kaloritext, kalori;

  @override
  State<CardListFood> createState() => _CardListFoodState();
}

class _CardListFoodState extends State<CardListFood> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.nama,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(widget.ukuran,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: greendefault(), fontSize: 13)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(widget.kaloritext,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 13)),
                    ],
                  )
                ],
              ),
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  value == true
                      ? context.read<BreakfastBlocBloc>().add(BreakfastEvent({
                            'nama': widget.nama,
                            'ukuran': widget.ukuran,
                            'kalori': widget.kalori,
                          }))
                      : null;

                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
