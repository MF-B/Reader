 import 'package:flutter/material.dart';

 class ReadingPage extends StatelessWidget {
   // 这是你和后端朋友的“接口”
   // 他负责把 txt 文件读成一个巨大的 String，传给这个变量
   final String bookContent;

   const ReadingPage({super.key, required this.bookContent});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       // 1. 顶部导航栏 (MVP可以先要有，方便退出)
       appBar: AppBar(
         title: const Text('正在阅读'),
         backgroundColor: Colors.white,
         elevation: 0, // 去掉阴影，看起来更像阅读器
         iconTheme: const IconThemeData(color: Colors.black),
         titleTextStyle: const TextStyle(color: Colors.black, fontSize: 18),
       ),

       // 2. 核心区域：滚动视图
       body: Container(
         color: const Color(0xFFF5F5F5), // 经典的“米黄色”护眼背景
         width: double.infinity,
         height: double.infinity,

         // SingleChildScrollView 让里面的文字太长时可以滚动
         child: SingleChildScrollView(
           // 3. 边距：不要让字贴着屏幕边缘，留出呼吸感
           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),

           // 4. 文字本体
           child: Text(
             bookContent,
             style: const TextStyle(
               fontSize: 18.0,       // 字号：18是比较舒服的阅读大小
               height: 1.6,          // 行高：1.6倍行距，防止密密麻麻挤在一起
               color: Colors.black87,// 字体颜色：不要用纯黑，87%黑度更柔和
               letterSpacing: 1.2,   // 字间距：稍微宽一点，阅读不累
             ),
           ),
         ),
       ),
     );
   }
 }