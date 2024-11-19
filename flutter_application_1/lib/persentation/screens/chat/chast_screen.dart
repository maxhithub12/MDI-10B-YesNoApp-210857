import 'package:flutter/material.dart';
import 'package:flutter_application_1/persentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_1/persentation/widgets/chat/other_message_bubble.dart';
import 'package:flutter_application_1/persentation/widgets/shared/message_field_box.dart';

class ChastScreen extends StatelessWidget {
  const ChastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://definicion.de/wp-content/uploads/2019/07/perfil-de-usuario.png'),
          ),
        ),
        title: Text('Amor'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const OtherMessageBubble()
                          : const MyMessageBubble();
                    })),

            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
