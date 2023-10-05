import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/components/message_bubble.dart';

final _fireStore = FirebaseFirestore.instance;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const String id = 'chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  late User loggedInUser;
  late String messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth
          .currentUser; //this collects the information of the new user or existing user if any.
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  //Using the following function we get the instance messages if there is any changes in the database.
  // void messageStream() async {
  //   await for (var snapshot in _fireStore.collection('messages').snapshots()) {
  //     for (var message in snapshot.docs) {
  //       print(message.data());
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kScaffoldBackgroundColor,
        leading: null,
        actions: [
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: const Center(
          child: Text('⚡️ Chat'),
        ),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MessageStream(loggedInUsermail: loggedInUser.email),
              Container(
                  decoration: kMessageContainerDecoration,
                  height: 60.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: messageTextController,
                          onChanged: (value) {
                            messageText = value;
                          },
                          decoration: kMessageTextFieldDecoration,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          messageTextController.clear();
                          _fireStore.collection('messages').add({
                            'text': messageText,
                            'sender': loggedInUser.email,
                            'time': Timestamp.now(),
                          });
                        },
                        child: const Text(
                          'Send',
                          style: kSendButtonTextStyle,
                        ),
                      ),
                    ],
                  )),
            ]),
      ),
    );
  }
}
