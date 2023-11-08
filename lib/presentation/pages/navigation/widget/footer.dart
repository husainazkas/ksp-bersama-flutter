import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/size_util.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 64.0,
        horizontal: width(context, desktop: 162.0, tablet: 80.0, mobile: 36.0),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(35.0)),
      ),
      child: DefaultTextStyle.merge(
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        child: Wrap(
          spacing: width(context, desktop: 252.0, tablet: 180.0, mobile: 90.0),
          runSpacing: 64.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tautan Langsung',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 22.0,
                      mobile: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 63.0,
                    tablet: 46.0,
                    mobile: 32.0,
                  ),
                ),
                _buildButton(
                  context,
                  label: 'Pinjaman',
                  onTap: () {
                    context.go('/loan');
                  },
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 38.0,
                    tablet: 28.0,
                    mobile: 18.0,
                  ),
                ),
                _buildButton(
                  context,
                  label: 'Simpanan',
                  onTap: () {
                    context.go('/saving');
                  },
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 38.0,
                    tablet: 28.0,
                    mobile: 18.0,
                  ),
                ),
                _buildButton(
                  context,
                  label: 'Tentang Kami',
                  onTap: () {
                    context.go('/about-us');
                  },
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 38.0,
                    tablet: 28.0,
                    mobile: 18.0,
                  ),
                ),
                _buildButton(
                  context,
                  label: 'Hubungi Kami',
                  onTap: () {
                    context.go('/contact-us');
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KOPERASI SIMPAN PINJAM BERSAMA (UNINDRA)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 22.0,
                      mobile: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: width(
                    context,
                    desktop: 63.0,
                    tablet: 46.0,
                    mobile: 32.0,
                  ),
                ),
                SelectableText(
                  'Jl. Raya Tengah No.80, RT.6/RW.1, Gedong,\nKec. Ps. Rebo, Kota Jakarta Timur,\nDaerah Khusus Ibukota Jakarta 13760',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: width(
                      context,
                      desktop: 22.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String label,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: width(context, desktop: 22.0, tablet: 18.0, mobile: 14.0),
        ),
      ),
    );
  }
}
