import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  static String routeName = '/TestPage';

  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MyAppBar()
      ),
      body: Scaffold(
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownMenu(
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: 1,
                    label: "1",
                  ),
                  DropdownMenuEntry(
                    value: 2,
                    label: "2",
                  ),
                  DropdownMenuEntry(
                    value: 3,
                    label: "3",
                  ),
                ],
                width: 200,
                enabled: true,
                leadingIcon: Icon(
                  Icons.abc,
                  size: 24,
                ),
                trailingIcon: Icon(
                  Icons.access_alarm,
                  size: 24,
                ),
                textStyle: TextStyle(color: Colors.red),
                label: Text(
                  "test",
                  style: TextStyle(color: Colors.blue),
                ),
                textAlign: TextAlign.center,
                hintText: "Hint Text",

                // expandedInsets: const EdgeInsets.all(30),
                // inputDecorationTheme: InputDecorationTheme(
                //   filled: true,
                // constraints: BoxConstraints(
                //     maxHeight: 45),
                // contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                // ),
                // menuStyle: const MenuStyle(
                //   padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 8)),
                // ),
                // inputDecorationTheme: const InputDecorationTheme(
                //   // constraints: BoxConstraints(maxHeight: 100),
                //   contentPadding: EdgeInsets.only(top: 4),
                // ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "test",
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: Icon(Icons.abc),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.red,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "test",
                  prefixIcon: Icon(Icons.abc),
                  suffixIcon: Icon(Icons.abc),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const AppTextField()
            ],
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final Widget? leading;

  const MyAppBar({super.key, this.leading});

  @override
  Widget build(BuildContext context) {
    final Color color =
        Theme.of(context).appBarTheme.iconTheme?.color ?? Colors.black;
    return AppBar(
      leading: leading ??
          IconButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              icon: Icon(
                Icons.arrow_back,
                color: color,
              )),
    );
  }
}

class AppTextField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final Color fillColor;
  final Color borderColor;

  const AppTextField({
    super.key,
    this.label,
    this.controller,
    this.fillColor = Colors.white,
    this.borderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: label,
        prefixIcon: const Icon(Icons.abc),
        suffixIcon: const Icon(Icons.abc),
      ),
    );
  }
}
