import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_skyway_example/Page/HomePage.dart';
import 'package:flutter_skyway_example/Page/MyPage.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text('data'),
//     );
//   }
// }

class NavigationIconView {
  final BottomNavigationBarItem item;
  final AnimationController controller;

  NavigationIconView(
      {Widget icon, Widget title, Widget actionico, TickerProvider vsync})
      : item = new BottomNavigationBarItem(
            icon: icon, title: title, activeIcon: actionico),
        controller = new AnimationController(
            duration: kThemeAnimationDuration, // 设置动画持续的时间
            vsync: vsync // 默认属性和参数
            );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController _controller;
  int _currentIndex = 0; // 当前界面的索引值
  List<NavigationIconView> _navigationViews; // 底部图标按钮区域
  List<StatefulWidget> _pageList; // 用来存放我们的图标对应的页面
  StatefulWidget _currentPage; // 当前的显示页面

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    // 初始化导航图标
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
          icon: new Icon(
            Icons.assessment,
            color: hexColor('#373238'),
          ),
          actionico: new Icon(
            Icons.assessment,
            color: hexColor('#d11db2'),
          ),
          title: new Text(
            "首页",
            style: TextStyle(color: hexColor('#373238')),
          ),
          vsync: this), // vsync 默认属性和参数
      new NavigationIconView(
          icon: new Icon(
            Icons.perm_identity,
            color: hexColor('#373238'),
          ),
          actionico: new Icon(
            Icons.assessment,
            color: hexColor('#d11db2'),
          ),
          title: new Text(
            "我的",
            style: TextStyle(color: hexColor('#373238')),
          ),
          vsync: this),
    ];

    // 给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
    _pageList = <StatefulWidget>[
      // new HomePage(),
      new HomePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      backgroundColor: hexColor("#19131c"),
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(), // 添加 icon 按钮
      currentIndex: _currentIndex, // 当前点击的索引值
      type: BottomNavigationBarType.fixed, // 设置底部导航工具栏的类型：fixed 固定
      onTap: (int index) {
        // 添加点击事件
        setState(() {
          // 点击之后，需要触发的逻辑事件
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return new Material(
        child: new Scaffold(
      backgroundColor: hexColor("#1a112b"),
      body: new Center(child: _currentPage // 动态的展示我们当前的页面
          ),
      bottomNavigationBar: bottomNavigationBar,
    ));
  }
}
