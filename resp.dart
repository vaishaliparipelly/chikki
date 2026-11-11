import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return DesktopLayout();
          } else if (constraints.maxWidth > 500) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}

Widget DesktopLayout() {
  return const Scaffold(
    body: Center(
      child: Text("You are Using Desktop", style: TextStyle(fontSize: 40)),
    ),
  );
}

Widget TabletLayout() {
  return const Scaffold(
    body: Center(
      child: Text("You are Using Tab", style: TextStyle(fontSize: 40)),
    ),
  );
}

Widget MobileLayout() {
  return const Scaffold(
    body: Center(
      child: Text("You are Using Mobile", style: TextStyle(fontSize: 40)),
    ),
  );
}

void main() {
  runApp(const ResponsiveUI());
}
