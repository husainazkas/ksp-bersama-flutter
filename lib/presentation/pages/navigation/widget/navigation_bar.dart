import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/size_util.dart';

const _expandedHeight = 214.0;
const _collapsedHeight = 124.0;

class NavigationBar extends StatefulWidget {
  const NavigationBar({
    super.key,
    this.scrollController,
    this.isAlwaysCollapsed = false,
  });

  final ScrollController? scrollController;
  final bool isAlwaysCollapsed;

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController?.addListener(_collapseListener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.scrollController?.removeListener(_collapseListener);
  }

  void _collapseListener() {
    if (widget.scrollController == null) return;
    if (widget.scrollController!.hasClients) {
      final isCollapse = widget.scrollController!.offset >
          (_expandedHeight - _collapsedHeight);
      if (_isCollapsed != isCollapse) {
        _isCollapsed = isCollapse;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isAlwaysCollapsed) {
      return _buildAlwaysCollapsed();
    }

    final location = GoRouterState.of(context).uri.toString();
    final size = MediaQuery.sizeOf(context);
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      actions: const [SizedBox()],
      expandedHeight: _expandedHeight,
      collapsedHeight: _collapsedHeight,
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1.0,
        titlePadding: EdgeInsets.zero,
        title: AnimatedContainer(
          height: _isCollapsed ? _collapsedHeight : 90.0,
          color: _isCollapsed
              ? Theme.of(context).colorScheme.background
              : Theme.of(context).colorScheme.primary,
          duration: kThemeAnimationDuration,
          child: _buildLogo(
            showLogo: _isCollapsed,
            children: size.width <= 600 && _isCollapsed
                ? [
                    const EndDrawerButton(),
                  ]
                : [
                    _buildButton(
                      context,
                      label: 'Beranda',
                      labelStyle: TextStyle(
                        color: _isCollapsed
                            ? Theme.of(context).colorScheme.onBackground
                            : null,
                        fontSize: width(
                          context,
                          desktop: 24.0,
                          tablet: 18.0,
                          mobile: 14.0,
                        ),
                      ),
                      isSelected: location == '/',
                      onPressed: () {
                        context.go('/');
                      },
                    ),
                    const SizedBox(width: 8.0),
                    _buildButton(
                      context,
                      label: 'Pinjaman',
                      labelStyle: TextStyle(
                        color: _isCollapsed
                            ? Theme.of(context).colorScheme.onBackground
                            : null,
                        fontSize: width(
                          context,
                          desktop: 24.0,
                          tablet: 18.0,
                          mobile: 14.0,
                        ),
                      ),
                      isSelected: location.startsWith('/loan'),
                      onPressed: () {
                        context.go('/loan');
                      },
                    ),
                    const SizedBox(width: 8.0),
                    _buildButton(
                      context,
                      label: 'Simpanan',
                      labelStyle: TextStyle(
                        color: _isCollapsed
                            ? Theme.of(context).colorScheme.onBackground
                            : null,
                        fontSize: width(
                          context,
                          desktop: 24.0,
                          tablet: 18.0,
                          mobile: 14.0,
                        ),
                      ),
                      isSelected: location.startsWith('/saving'),
                      onPressed: () {
                        context.go('/saving');
                      },
                    ),
                    const SizedBox(width: 8.0),
                    _buildButton(
                      context,
                      label: 'Tentang Kami',
                      labelStyle: TextStyle(
                        color: _isCollapsed
                            ? Theme.of(context).colorScheme.onBackground
                            : null,
                        fontSize: width(
                          context,
                          desktop: 24.0,
                          tablet: 18.0,
                          mobile: 14.0,
                        ),
                      ),
                      isSelected: location.startsWith('/about-us'),
                      onPressed: () {
                        context.go('/about-us');
                      },
                    ),
                    const SizedBox(width: 8.0),
                    _buildButton(
                      context,
                      label: 'Hubungi Kami',
                      labelStyle: TextStyle(
                        color: _isCollapsed
                            ? Theme.of(context).colorScheme.onBackground
                            : null,
                        fontSize: width(
                          context,
                          desktop: 24.0,
                          tablet: 18.0,
                          mobile: 14.0,
                        ),
                      ),
                      isSelected: location.startsWith('/contact-us'),
                      onPressed: () {
                        context.go('/contact-us');
                      },
                    ),
                  ],
          ),
        ),
        background: ColoredBox(
          color: Theme.of(context).colorScheme.background,
          child: _buildLogo(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }

  Widget _buildAlwaysCollapsed() {
    final location = GoRouterState.of(context).uri.toString();
    final size = MediaQuery.sizeOf(context);
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      actions: const [SizedBox()],
      toolbarHeight: _collapsedHeight,
      forceElevated: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: _buildLogo(
        showLogo: true,
        children: size.width <= 600
            ? [
                const EndDrawerButton(),
              ]
            : [
                _buildButton(
                  context,
                  label: 'Beranda',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                  isSelected: location == '/',
                  onPressed: () {
                    context.go('/');
                  },
                ),
                const SizedBox(width: 8.0),
                _buildButton(
                  context,
                  label: 'Pinjaman',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                  isSelected: location.startsWith('/loan'),
                  onPressed: () {
                    context.go('/loan');
                  },
                ),
                const SizedBox(width: 8.0),
                _buildButton(
                  context,
                  label: 'Simpanan',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                  isSelected: location.startsWith('/saving'),
                  onPressed: () {
                    context.go('/saving');
                  },
                ),
                const SizedBox(width: 8.0),
                _buildButton(
                  context,
                  label: 'Tentang Kami',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                  isSelected: location.startsWith('/about-us'),
                  onPressed: () {
                    context.go('/about-us');
                  },
                ),
                const SizedBox(width: 8.0),
                _buildButton(
                  context,
                  label: 'Hubungi Kami',
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: width(
                      context,
                      desktop: 24.0,
                      tablet: 18.0,
                      mobile: 14.0,
                    ),
                  ),
                  isSelected: location.startsWith('/contact-us'),
                  onPressed: () {
                    context.go('/contact-us');
                  },
                ),
              ],
      ),
    );
  }

  Widget _buildLogo({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    bool showLogo = true,
    List<Widget> children = const [],
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width(context, desktop: 62.0, tablet: 54.0, mobile: 32.0),
        vertical: 22.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          if (showLogo) ...[
            SizedBox.square(
              dimension: width(
                context,
                desktop: 87.0,
                tablet: 68.0,
                mobile: 54.0,
              ),
              child: Image.asset('assets/images/koperasi-indonesia.png'),
            ),
            const SizedBox(width: 40.0),
            Text(
              'KOPERASI\nSIMPAN PINJAM\nBERSAMA (UNINDRA)',
              style: TextStyle(
                fontSize: width(
                  context,
                  desktop: 24.0,
                  tablet: 20.0,
                  mobile: 16.0,
                ),
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const Expanded(
              child: SizedBox(width: 40.0),
            ),
          ],
          ...children.take(
            MediaQuery.sizeOf(context).width < 800 ? 7 : children.length,
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    VoidCallback? onPressed,
    required String label,
    TextStyle? labelStyle,
    bool isSelected = false,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
      ),
      onPressed: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: isSelected
              ? Border(
                  bottom: BorderSide(
                    color: labelStyle?.color ??
                        Theme.of(context).colorScheme.onPrimary,
                  ),
                )
              : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onPrimary,
          ).merge(labelStyle),
        ),
      ),
    );
  }
}
