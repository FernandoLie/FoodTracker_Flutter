import 'package:flutter/material.dart';
import 'package:food_tracker/constanta.dart';
import 'package:food_tracker/pages/list_food.dart';

class CardDiary extends StatefulWidget {
  const CardDiary({
    Key? key,
    required this.gambar,
    required this.text,
    required this.datanya,
  }) : super(key: key);

  final String gambar, text;
  final List<Map> datanya;

  @override
  State<CardDiary> createState() => _CardDiaryState();
}

class _CardDiaryState extends State<CardDiary> {
  int _totalkalori = 0;
  bool _isshow = false;
  @override
  Widget build(BuildContext context) {
    _totalkalori = 0;

    if (widget.datanya.isNotEmpty) {
      for (int i = 0; i < widget.datanya.length; i++) {
        _totalkalori += int.parse(widget.datanya[i]['kalori']);
      }
    }

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SizedBox(width: 30, child: Image.asset(widget.gambar)),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.text,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            if (widget.datanya.isNotEmpty)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(_totalkalori.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Text('calories',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ],
                              ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ListFood()),
                                  );
                                },
                                child: Image.asset('assets/images/plus.png')),
                          ],
                        ),
                      ],
                    ),
                    if (widget.datanya.isNotEmpty)
                      const Divider(
                        color: Colors.black,
                      ),
                    if (widget.datanya.isNotEmpty)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.datanya.length} item',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _isshow = !_isshow;
                                });
                              },
                              child: _isshow
                                  ? const Icon(
                                      Icons.keyboard_arrow_down_rounded)
                                  : const Icon(Icons.keyboard_arrow_up_rounded))
                        ],
                      )
                  ],
                ),
              ),
            ]),
            if (_isshow)
              const Divider(color: Colors.grey, height: 2, thickness: 1),
            if (_isshow && widget.datanya.isNotEmpty)
              for (var i = 0; i < widget.datanya.length; i++)
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: SizedBox(
                      width: 30,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.datanya[i]['nama'],
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Row(
                              children: [
                                Text(
                                  widget.datanya[i]['kalori'].toString(),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.datanya[i]['ukuran'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: greendefault()),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
