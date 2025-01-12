// import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';

// class QuoteScreen extends StatefulWidget {
//   const QuoteScreen({super.key});

//   @override
//   _QuoteScreenState createState() => _QuoteScreenState();
// }

// class _QuoteScreenState extends State<QuoteScreen> {
//   final List<Map<String, String>> quotes = [
//     {
//       "quote": "قلبي يُحدّثُني بأنّكَ مُتلِفي روحي فداكَ عرفتَ أم لم تعرفِ.",
//       "author": "ابن الفارض"
//     },
//     {
//       "quote": "أنا من أهوى ومن أهوى أنا نحنُ روحانِ حللنا بدنًا..",
//       "author": "ابن الفارض"
//     },
//     {
//       "quote": "قلْ للمليحةِ في الخمار الأسودِ ماذا فعلتِ بناسكٍ متعبّدِ..",
//       "author": "أبو نواس"
//     },
//     {
//       "quote":
//           "إني ذكرتُكَ بالزهراءِ مشتاقًا والأفقُ طلقٌ ووجهُ الأرضِ قد راقا..",
//       "author": "ابن الفارض"
//     },
//     {
//       "quote": "أنا الذي نظر الأعمى إلى أدبي وأسمعت كلماتي من به صممُ..",
//       "author": "المتنبي"
//     },
//   ];

//   Map<String, String> currentQuote = {
//     "quote": "اضغط على الزر للحصول على اقتباس جديد!",
//     "author": "",
//   };

//   void generateQuote() {
//     setState(() {
//       currentQuote = (quotes..shuffle()).first;
//     });
//   }

//     void deleteQuote(int index) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text("Delete Quote"),
//         content: const Text("Are you sure you want to delete this quote?"),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text("Cancel"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 quotes.removeAt(index);
//               });
//               Navigator.of(context).pop();
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text("Quote deleted successfully!")),
//               );
//             },
//             child: const Text("Delete"),
//           ),
//         ],
//       ),
//     );
//   }

//   void showAddQuoteDialog() {
//     String newQuote = "";
//     String newAuthor = "";

//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text(
//           "إنشاء اقتباس جديد",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         content: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 onChanged: (value) => newQuote = value,
//                 decoration: const InputDecoration(
//                   labelText: "النص",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 onChanged: (value) => newAuthor = value,
//                 decoration: const InputDecoration(
//                   labelText: "المؤلف",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text("إلغاء"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (newQuote.isNotEmpty && newAuthor.isNotEmpty) {
//                 setState(() {
//                   quotes.add({"quote": newQuote, "author": newAuthor});
//                   currentQuote = {"quote": newQuote, "author": newAuthor};
//                 });
//                 Navigator.of(context).pop();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("تم إضافة الاقتباس بنجاح!")),
//                 );
//               } else {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("يرجى ملء جميع الحقول.")),
//                 );
//               }
//             },
//             child: const Text("إضافة"),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF3C3B3F), Color(0xFFDAD4EC)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 50),
//               const Text(
//                 'Random Quotes',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
                
//               ),
              
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 10,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
                    
//                     Text(
//                       currentQuote['quote']!,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 20,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.bold,
                        
//                       ),
//                     ),
                    
//                     if (currentQuote['author']!.isNotEmpty)
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: Text(
//                           "- ${currentQuote['author']}",
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey,
//                           ),
//                         ),
                        
//                       ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.deepPurple,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 50, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 onPressed: generateQuote,
//                 child: const Text(
//                   "Generate Quote",
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 44, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 onPressed: showAddQuoteDialog,
//                 child: const Text(
//                   "Create New Quote",
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 65, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 onPressed: () {
//                   Share.share(
//                       "${currentQuote['quote']}\n\n- ${currentQuote['author']}");
//                 },
//                 child: const Text(
//                   "Share Quote",
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: quotes.length,
//                   itemBuilder: (context, index) {
//                     final quote = quotes[index];
//                     return SingleChildScrollView(
//                       child: Card(
//                         margin: const EdgeInsets.symmetric(vertical: 8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: ListTile(
//                           contentPadding: const EdgeInsets.symmetric(
//                               vertical: 16, horizontal: 20),
//                           title: Text(
//                             quote['quote']!,
//                             style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           subtitle: Text(
//                             "- ${quote['author']}",
//                             style: const TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey,
//                             ),
//                           ),
//                           // trailing: IconButton(
//                           //   icon: const Icon(Icons.delete, color: Colors.red),
//                           //   onPressed: () => deleteQuote(index),
//                           // ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<Map<String, String>> quotes = [
    {
      "quote": "قلبي يُحدّثُني بأنّكَ مُتلِفي روحي فداكَ عرفتَ أم لم تعرفِ.",
      "author": "ابن الفارض"
    },
    {
      "quote": "أنا من أهوى ومن أهوى أنا نحنُ روحانِ حللنا بدنًا..",
      "author": "ابن الفارض"
    },
    {
      "quote": "قلْ للمليحةِ في الخمار الأسودِ ماذا فعلتِ بناسكٍ متعبّدِ..",
      "author": "أبو نواس"
    },
    {
      "quote":
          "إني ذكرتُكَ بالزهراءِ مشتاقًا والأفقُ طلقٌ ووجهُ الأرضِ قد راقا..",
      "author": "ابن الفارض"
    },
    {
      "quote": "أنا الذي نظر الأعمى إلى أدبي وأسمعت كلماتي من به صممُ..",
      "author": "المتنبي"
    },
  ];

  Map<String, String> currentQuote = {
    "quote": "اضغط على الزر للحصول على اقتباس جديد!",
    "author": "",
  };

  void generateQuote() {
    setState(() {
      currentQuote = (quotes..shuffle()).first;
    });
  }

  void deleteQuote(int index) {
    // عرض شاشة التأكيد عند الضغط على أيقونة الحذف
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("تأكيد الحذف"),
        content: const Text("هل أنت متأكد من أنك تريد حذف هذا الاقتباس؟"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(), // إغلاق نافذة التأكيد
            child: const Text("إلغاء"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                quotes.removeAt(index); // حذف الاقتباس من القائمة
              });
              Navigator.of(context).pop(); // إغلاق نافذة التأكيد
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("تم حذف الاقتباس بنجاح!")),
              );
            },
            child: const Text("حذف"),
          ),
        ],
      ),
    );
  }

  void showAddQuoteDialog() {
    String newQuote = "";
    String newAuthor = "";

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "إنشاء اقتباس جديد",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) => newQuote = value,
                decoration: const InputDecoration(
                  labelText: "النص",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) => newAuthor = value,
                decoration: const InputDecoration(
                  labelText: "المؤلف",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("إلغاء"),
          ),
          ElevatedButton(
            onPressed: () {
              if (newQuote.isNotEmpty && newAuthor.isNotEmpty) {
                setState(() {
                  quotes.add({"quote": newQuote, "author": newAuthor});
                  currentQuote = {"quote": newQuote, "author": newAuthor};
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("تم إضافة الاقتباس بنجاح!")),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("يرجى ملء جميع الحقول.")),
                );
              }
            },
            child: const Text("إضافة"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // جعل الشاشة قابلة للتمرير
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3C3B3F), Color(0xFFDAD4EC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Random Quotes',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        currentQuote['quote']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (currentQuote['author']!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "- ${currentQuote['author']}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: generateQuote,
                  child: const Text(
                    "Generate Quote",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 44, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: showAddQuoteDialog,
                  child: const Text(
                    "Create New Quote",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 65, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Share.share(
                        "${currentQuote['quote']}\n\n- ${currentQuote['author']}");
                  },
                  child: const Text(
                    "Share Quote",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 5),
                ListView.builder(
                  shrinkWrap: true,  // استخدام shrinkWrap لجعل الـ ListView مرن
                  physics: NeverScrollableScrollPhysics(), // منع التمرير الداخلي للـ ListView
                  itemCount: quotes.length,
                  itemBuilder: (context, index) {
                    final quote = quotes[index];
                    return SingleChildScrollView(
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          title: Text(
                            quote['quote']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            "- ${quote['author']}",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => deleteQuote(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
