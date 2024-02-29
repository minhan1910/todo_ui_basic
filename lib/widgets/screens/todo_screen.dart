import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TodoScreen();
}

class _TodoScreen extends State<TodoScreen> {
  final addInput = SizedBox(
    width: 260,
    child: TextFormField(
      decoration: InputDecoration(
        label: const Text(
          'Add Task',
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        fontFamily: "Poppins",
      ),
    ),
  );

  Widget _buildTextInput(final String name) {
    return SizedBox(
      width: 260,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(name),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }

  final iconAddButton = Expanded(
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          debugPrint('check');
        },
        icon: Icon(
          Icons.add,
          size: 30,
          color: Colors.pink[200],
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
  );

  final iconTodoButton = Expanded(
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          debugPrint('check');
        },
        icon: Icon(
          Icons.check,
          size: 30,
          color: Colors.pink[200],
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
  );

  final iconTodoDoneButton = Expanded(
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: IconButton(
        onPressed: () {
          debugPrint('check');
        },
        icon: const Icon(
          Icons.check,
          size: 30,
          color: Colors.grey,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.pink[200]!.withOpacity(0.75),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'To do list',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                addInput,
                                const SizedBox(width: 10),
                                iconAddButton,
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                              bottom: 10,
                            ),
                            child: const Text(
                              'To do',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Wrap(
                              runSpacing: 10,
                              children: [
                                // SizedBox(
                                //   height: 300,
                                //   child: ListView.separated(
                                //     scrollDirection: Axis.vertical,
                                //     itemBuilder: (ctx, index) => Row(
                                //       children: [
                                //         textInput,
                                //         const SizedBox(width: 10),
                                //         iconTodoButton,
                                //       ],
                                //     ),
                                //     separatorBuilder: (ctx, index) =>
                                //         const SizedBox(
                                //       height: 10,
                                //     ),
                                //     itemCount: 6,
                                //   ),
                                // ),

                                Row(
                                  children: [
                                    _buildTextInput('Cook'),
                                    const SizedBox(width: 10),
                                    iconTodoButton,
                                  ],
                                ),
                                Row(
                                  children: [
                                    _buildTextInput('exercises'),
                                    const SizedBox(width: 10),
                                    iconTodoButton,
                                  ],
                                ),
                                Row(
                                  children: [
                                    _buildTextInput('call doctor'),
                                    const SizedBox(width: 10),
                                    iconTodoButton,
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                              bottom: 10,
                            ),
                            child: const Text(
                              'Done',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Row(                              
                              children: [
                                _buildTextInput('Done task'),
                                const SizedBox(width: 10),
                                iconTodoDoneButton
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
