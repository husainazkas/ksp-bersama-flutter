import 'package:flutter/material.dart';

import '../../utils/size_util.dart';
import 'widgets/contact_item.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  final List<ContactItemModel> _items = const [
    ContactItemModel(
      fullName: 'Husain Fadhilah Azka S',
      imageAsset: 'assets/images/contacts/husain.jpg',
      npm: '202143500225',
      phone: '6285162927497',
    ),
    ContactItemModel(
      fullName: 'Paulieta Gracia Lim',
      imageAsset: 'assets/images/contacts/paulieta.jpeg',
      npm: '202143500231',
      phone: '6289515472799',
    ),
    ContactItemModel(
      fullName: 'Trio Saputra',
      imageAsset: 'assets/images/contacts/trio.jpeg',
      npm: '202143500276',
      phone: '6289513052723',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: width(
            context,
            desktop: 93.0,
            tablet: 56.0,
            mobile: 32.0,
          ),
        ),
        Text(
          'KONTAK KAMI',
          style: TextStyle(
            fontSize: width(
              context,
              desktop: 24.0,
              tablet: 20.0,
              mobile: 16.0,
            ),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: width(
            context,
            desktop: 93.0,
            tablet: 56.0,
            mobile: 32.0,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned.fill(
                top: width(
                  context,
                  desktop: 215.0,
                  tablet: 140.0,
                  mobile: 76.0,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(35.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: width(
                    context,
                    desktop: 125.0,
                    tablet: 88.0,
                    mobile: 54.0,
                  ),
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width(
                    context,
                    desktop: 61.0,
                    tablet: 36.0,
                    mobile: 20.0,
                  ),
                  runSpacing: width(
                    context,
                    desktop: 61.0,
                    tablet: 36.0,
                    mobile: 20.0,
                  ),
                  children: _items.map((e) => ContactItem(data: e)).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
