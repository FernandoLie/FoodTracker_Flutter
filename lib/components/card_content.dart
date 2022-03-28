import 'package:flutter/material.dart';

class CardKonten extends StatelessWidget {
  const CardKonten({
    Key? key,
    required this.foto,
    required this.nama,
    required this.gambarkonten,
    required this.deskripsi,
  }) : super(key: key);

  final String foto, nama, gambarkonten, deskripsi;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                height: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        foto,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                nama,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 18),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 20),
              Text(
                deskripsi,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(
            gambarkonten,
            width: size.width,
          ),
        ],
      ),
    );
  }
}
