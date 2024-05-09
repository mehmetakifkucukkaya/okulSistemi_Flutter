import 'package:flutter/material.dart';

class RectorsMessage extends StatelessWidget {
  const RectorsMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(child: Text("Rektörün Mesajı")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage("assets/userAvatar.png"), // TODO: Add image
              ),
              const SizedBox(height: 16),
              Container(
                color: Colors.orange[50],
                child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at mollis mauris, a sagittis tortor. Pellentesque nec nunc non tellus posuere aliquam vel vitae eros. Morbi posuere ligula leo. Mauris eu justo sagittis enim porta vulputate. Maecenas volutpat blandit elit, gravida bibendum sem sodales vel. Nulla ut lobortis ex. Nulla molestie, est in condimentum porttitor, nulla nibh congue magna, quis blandit dolor mauris non tellus. Nunc sem lacus, aliquam in hendrerit quis, pharetra vitae augue. Sed quis vehicula dolor, porta laoreet velit. Nulla facilisi. Phasellus lectus lacus, malesuada nec egestas vel, commodo quis magna. Nam vestibulum vestibulum nisl, vel ultricies enim blandit id. Phasellus ullamcorper augue ac ultrices consectetur."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
