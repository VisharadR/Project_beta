import 'package:flutter/material.dart';

class ClassCreator extends StatelessWidget {
  final double id;
  final String s_name;
  final String t_name;
  final String classTime;
  ClassCreator(this.id, this.s_name, this.t_name, this.classTime);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print('$id');
        },
        splashColor: Colors.blue[900],
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: (MediaQuery.of(context).size.height / 100) * 19,
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    s_name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(21, 0, 0, 0),
                    child: IconButton(
                        splashRadius: 1,
                        onPressed: () {},
                        icon: Icon(Icons.settings)),
                  ),
                ],
              ),
              Text(
                t_name,
                style: Theme.of(context).textTheme.headline4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.access_time_outlined,
                      size: 16,
                    ),
                    Text(classTime.toString()),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
