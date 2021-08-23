import 'package:flutter/material.dart';

import 'one/information.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  bool _isFavorited = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff6885e3), Color(0xffffffff)],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
              stops: [0.3, 1.2]),
        ),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              body: NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    centerTitle: true,
                    title: Text(
                      "الأماكن ",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                  ),
                ],
                body: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff6885e3), Color(0xffffffff)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.5]),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        margin: EdgeInsets.all(0),
                        child: ListTile(
                            onTap: () {},
                            title: Text(
                              "من نحن",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => first()));
                              },
                              icon: Icon(
                                Icons.navigate_next_outlined,
                                color: Color(0xff6885e3),
                                size: 30,
                              ),
                            )),
                      ),
                    );
                  },
                ),
              )),
        ));
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}

// @immutable
// class LocationPage extends StatelessWidget {
//   static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];
//
//   const LocationPage({Key? key}) : super(key: key);
//
//   void _showAction(BuildContext context, int index) {
//     showDialog<void>(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           content: Text(_actionTitles[index]),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: const Text('CLOSE'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         itemCount: 25,
//         itemBuilder: (context, index) {
//           return FakeItem(isBig: index.isOdd);
//         },
//       ),
//       floatingActionButton: ExpandableFab(
//         distance: 90.0,
//         children: [
//           ActionButton(
//             onPressed: () => _showAction(context, 0),
//             icon: const Icon(Icons.location_on_outlined),
//           ),
//           ActionButton(
//             onPressed: () => _showAction(context, 1),
//             icon: const Icon(Icons.share_location_sharp),
//           ),
//           ActionButton(
//             onPressed: () => _showAction(context, 2),
//             icon: const Icon(Icons.videocam),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// @immutable
// class ExpandableFab extends StatefulWidget {
//   const ExpandableFab({
//     Key? key,
//     this.initialOpen,
//     required this.distance,
//     required this.children,
//   }) : super(key: key);
//
//   final bool? initialOpen;
//   final double distance;
//   final List<Widget> children;
//
//   @override
//   _ExpandableFabState createState() => _ExpandableFabState();
// }
//
// class _ExpandableFabState extends State<ExpandableFab>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController _controller;
//   late final Animation<double> _expandAnimation;
//   bool _open = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _open = widget.initialOpen ?? false;
//     _controller = AnimationController(
//       value: _open ? 1.0 : 0.0,
//       duration: const Duration(milliseconds: 250),
//       vsync: this,
//     );
//     _expandAnimation = CurvedAnimation(
//       curve: Curves.fastOutSlowIn,
//       reverseCurve: Curves.easeOutQuad,
//       parent: _controller,
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _toggle() {
//     setState(() {
//       _open = !_open;
//       if (_open) {
//         _controller.forward();
//       } else {
//         _controller.reverse();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.expand(
//       child: Stack(
//         alignment: Alignment.bottomRight,
//         clipBehavior: Clip.none,
//         children: [
//           _buildTapToCloseFab(),
//           ..._buildExpandingActionButtons(),
//           _buildTapToOpenFab(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTapToCloseFab() {
//     return SizedBox(
//       width: 56.0,
//       height: 56.0,
//       child: Center(
//         child: Material(
//           shape: const CircleBorder(),
//           clipBehavior: Clip.antiAlias,
//           elevation: 4.0,
//           child: InkWell(
//             onTap: _toggle,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.close,
//                 color: Color(0xff6885e3).withOpacity(0.8),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildExpandingActionButtons() {
//     final children = <Widget>[];
//     final count = widget.children.length;
//     final step = 90.0 / (count - 1);
//     for (var i = 0, angleInDegrees = 0.0;
//         i < count;
//         i++, angleInDegrees += step) {
//       children.add(
//         _ExpandingActionButton(
//           directionInDegrees: angleInDegrees,
//           maxDistance: widget.distance,
//           progress: _expandAnimation,
//           child: widget.children[i],
//         ),
//       );
//     }
//     return children;
//   }
//
//   Widget _buildTapToOpenFab() {
//     return IgnorePointer(
//       ignoring: _open,
//       child: AnimatedContainer(
//         transformAlignment: Alignment.center,
//         transform: Matrix4.diagonal3Values(
//           _open ? 0.7 : 1.0,
//           _open ? 0.7 : 1.0,
//           1.0,
//         ),
//         duration: const Duration(milliseconds: 250),
//         curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
//         child: AnimatedOpacity(
//           opacity: _open ? 0.0 : 1.0,
//           curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
//           duration: const Duration(milliseconds: 250),
//           child: FloatingActionButton(
//             backgroundColor: Color(0xff6885e3),
//             onPressed: _toggle,
//             child: const Icon(Icons.add_circle_outline),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// @immutable
// class _ExpandingActionButton extends StatelessWidget {
//   _ExpandingActionButton({
//     Key? key,
//     required this.directionInDegrees,
//     required this.maxDistance,
//     required this.progress,
//     required this.child,
//   }) : super(key: key);
//
//   final double directionInDegrees;
//   final double maxDistance;
//   final Animation<double> progress;
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: progress,
//       builder: (context, child) {
//         final offset = Offset.fromDirection(
//           directionInDegrees * (math.pi / 180.0),
//           progress.value * maxDistance,
//         );
//         return Positioned(
//           right: 4.0 + offset.dx,
//           bottom: 4.0 + offset.dy,
//           child: Transform.rotate(
//             angle: (1.0 - progress.value) * math.pi / 2,
//             child: child!,
//           ),
//         );
//       },
//       child: FadeTransition(
//         opacity: progress,
//         child: child,
//       ),
//     );
//   }
// }
//
// @immutable
// class ActionButton extends StatelessWidget {
//   const ActionButton({
//     Key? key,
//     this.onPressed,
//     required this.icon,
//   }) : super(key: key);
//
//   final VoidCallback? onPressed;
//   final Widget icon;
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Material(
//       shape: const CircleBorder(),
//       clipBehavior: Clip.antiAlias,
//       color: Color(0xff6885e3).withOpacity(0.8),
//       elevation: 4.0,
//       child: IconTheme.merge(
//         data: theme.accentIconTheme,
//         child: IconButton(
//           onPressed: onPressed,
//           icon: icon,
//         ),
//       ),
//     );
//   }
// }
//
// @immutable
// class FakeItem extends StatelessWidget {
//   const FakeItem({
//     Key? key,
//     required this.isBig,
//   }) : super(key: key);
//
//   final bool isBig;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
//       height: isBig ? 128.0 : 36.0,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//         color: Colors.grey.shade300,
//       ),
//     );
//   }
// }
