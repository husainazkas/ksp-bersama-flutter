import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/contact_item.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  final List<ContactItemModel> _items = const [
    ContactItemModel(
      fullName: 'Husain Fadhilah Azka S',
      imageAsset: 'assets/images/contacts/husain.jpg',
      npm: '202143500225',
      title: 'Programmer',
    ),
    ContactItemModel(
      fullName: 'Paulieta Gracia Lim',
      imageAsset: 'assets/images/contacts/paulieta.jpeg',
      npm: '202143500231',
      title: 'UI/UX Designer',
    ),
    ContactItemModel(
      fullName: 'Trio Saputra',
      imageAsset: 'assets/images/contacts/trio.jpeg',
      npm: '202143500276',
      title: 'Technical Writer',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/unindra-b-2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 4.0,
        ),
        child: ColoredBox(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 36.0,
              bottom: 100.0,
            ),
            child: DefaultTextStyle.merge(
              style: const TextStyle(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hubungi Kami',
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 56.0),
                  Row(
                    children: List.generate(_items.length * 2 + 1, (index) {
                      final realIndex = index ~/ 2;
                      if (index.isEven) {
                        return const SizedBox(width: 64.0);
                      }

                      return Expanded(
                        child: ContactItem(data: _items[realIndex]),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
