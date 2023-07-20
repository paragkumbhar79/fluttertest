import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];

    for (var i = 0; i <= 100; i++) {

      list.add(ListItemWidget(count: 0,index: i,));

    }
    return ListView.builder(itemCount: list.length,itemBuilder: (context,index)=> list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  int? index;
  int? count;
  ListItemWidget({super.key,this.count,this.index});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}


class _ListItemWidgetState extends State<ListItemWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Text(widget.count.toString()),
            MaterialButton(
              onPressed: () {
                setState(() {
                  widget.count=widget.count!+1;
                });
              },
              child: const Text("+"),
            )
          ],
        ));
  }
}
