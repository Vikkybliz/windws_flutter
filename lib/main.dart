import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: ThemeData.dark(),
      home: NavigationView(
        appBar: NavigationAppBar(
          title: Text('FLUENT UI TUTORIAL'),
          automaticallyImplyLeading: false,
        ),
        pane: NavigationPane(
          displayMode: PaneDisplayMode.compact,
          selected: index,
          onChanged: (value){
            setState(() {
              index =  value;
            });
          },
          items: [
            PaneItem(icon: Icon(FluentIcons.game), title: Text('Game')),
            PaneItem(icon: Icon(FluentIcons.game), title: Text('Game')),
            PaneItem(icon: Icon(FluentIcons.game), title: Text('Game')),
          ]
        ),
        content: NavigationBody(
          index: index, children: [
            ScaffoldPage(
              header: Text('I am the first Page'),
              content: Center(
                child: Text('This is the first page'),
              ),
            ),
            ScaffoldPage(
              header: Text('I am the second Page'),
              content: Center(
                child: Text('This is the second page'),
              ),
            ),
            ScaffoldPage(
              header: Text('This is the third page'),
              content: TreeView(items: [
                TreeViewItem(
                    content: Text('Flutter platforms'), children: [
                      TreeViewItem(content: Text('Windows')),
                  TreeViewItem(content: Text('Mac')),
                  TreeViewItem(content: Text('Android')),
                ])
              ],

              ),
            ),
        ],

        ),
      ),
    );
  }
}
