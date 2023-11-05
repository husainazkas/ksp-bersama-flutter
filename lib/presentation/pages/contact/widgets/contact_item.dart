import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.data,
  });

  final ContactItemModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: 5.0,
            ),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            minRadius: 36.0,
            maxRadius: 100.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            backgroundImage: AssetImage(data.imageAsset),
          ),
        ),
        const SizedBox(height: 28.0),
        Text(
          data.fullName,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
          ),
        ),
        Text('NPM: ${data.npm}'),
        const SizedBox(height: 12.0),
        Text(
          '(${data.title})',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class ContactItemModel {
  final String fullName;
  final String imageAsset;
  final String npm;
  final String title;

  const ContactItemModel({
    required this.fullName,
    required this.imageAsset,
    required this.npm,
    required this.title,
  });
}
