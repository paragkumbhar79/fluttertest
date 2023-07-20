import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {



  @override
  Widget build(BuildContext context) {

    var list = <Widget>[];

    for (var i = 0; i <= 100; i++) {
      list.add(const ListItemWidget());
    }
    return ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> {
  int tap=0;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            RichText(text: TextSpan(
              recognizer: new TapGestureRecognizer()
                ..onTap = () {
                  setState(() {
                    tap++;
                  });
                  if(tap==3){
                    count++;
                  }
                },
              text: count.toString(),
            )),
            //Text(count.toString()),
            SizedBox(width: 10,),
            MaterialButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("+"),
            )
          ],
        ));
  }
}
