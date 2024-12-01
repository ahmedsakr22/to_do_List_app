import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/moudles/settings/settings.dart';
import 'package:to_do_list_app/moudles/tasks_List/tasks_list.dart';
import 'package:to_do_list_app/shared/styles/colors.dart';

class homeLayout extends StatelessWidget {
  static const String routeName = '/homeLayout';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Model(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('To Do List'),
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 2,
            elevation: 0.0, // to remove the shadow
            shape: CircularNotchedRectangle(),
            child: Consumer<Model>(builder: (context, Model, child) {
              return BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                currentIndex: Model.currentindex,
                onTap: (index) {
                  Model.changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                      size: 33,
                    ),
                    label: 'List Of Tasks',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings, size: 33),
                    label: 'Settings',
                  ),
                ],
              );
            }),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            shape: StadiumBorder(side: BorderSide(color: colorWhite, width: 4)),
            elevation: 0.0,
          ),
          body: Consumer<Model>(builder: (context, Model, child) {
            return Model.currentindex == 0 ? tabs[0] : tabs[1];
          }),
        ));
  }

  List<Widget> tabs = [taskList(), settings()];
}

class Model extends ChangeNotifier {
  int currentindex = 1;

  void changeIndex(int index) {
    currentindex = index;
    notifyListeners();
  }
}
