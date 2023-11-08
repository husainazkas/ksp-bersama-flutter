import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/size_util.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.data,
  });

  final ContactItemModel data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(
        context,
        desktop: 379.0,
        tablet: 290.0,
        mobile: 290.0,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 4.0),
              blurRadius: 10.0,
              color: Colors.black26,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(54.0, 70.0, 54.0, 70.0),
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 101.0,
                minRadius: 50.5,
                backgroundImage: AssetImage(data.imageAsset),
                backgroundColor: const Color(0xFFD9D9D9),
              ),
              SizedBox(
                height: width(
                  context,
                  desktop: 64.0,
                  tablet: 38.0,
                  mobile: 20.0,
                ),
              ),
              Text(
                data.fullName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 24.0,
                    tablet: 20.0,
                    mobile: 16.0,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: width(
                  context,
                  desktop: 17.0,
                  tablet: 10.0,
                  mobile: 6.0,
                ),
              ),
              Text(
                data.npm,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width(
                    context,
                    desktop: 22.0,
                    tablet: 18.0,
                    mobile: 16.0,
                  ),
                ),
              ),
              SizedBox(
                height: width(
                  context,
                  desktop: 76.0,
                  tablet: 48.0,
                  mobile: 26.0,
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 30.0,
                  ),
                ),
                onPressed: () async {
                  final url = Uri.parse('https://wa.me/${data.phone}');
                  final canLaunch = await canLaunchUrl(url);
                  if (canLaunch) {
                    await launchUrl(url);
                  }
                },
                child: Text(
                  'CHAT SEKARANG',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 20.0,
                      mobile: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactItemModel {
  final String fullName;
  final String imageAsset;
  final String npm;
  final String phone;

  const ContactItemModel({
    required this.fullName,
    required this.imageAsset,
    required this.npm,
    required this.phone,
  });
}
