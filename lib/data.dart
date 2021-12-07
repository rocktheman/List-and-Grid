import 'package:flutter/material.dart';
import 'package:flutter_application_10/main.dart';

class data extends StatelessWidget {
  int index = 0;
  data(int ind) {
    index = ind;
  }

  @override
  Widget build(BuildContext context) {
    print("text${index}");
    //  final todo = ModalRoute.of(context)!.settings.arguments as index;
    Map<int, String> animal_des = {
      0: "A cat is a furry animal that has a long tail and sharp claws. Cats are often kept as pets. 2. countable noun. Cats are lions, tigers, and other wild animals in the same family",
      1: "Dogs (Canis lupus familiaris) are domesticated mammals, not natural wild animals. They were originally bred from wolves. They have been bred by humans for a long time, and were the first animals ever to be domesticated. ... They are a popular pet because they are usually playful, friendly, loyal and listen to humans.",
      2: "Eagle is the common name for many large birds of prey of the family Accipitridae. Eagles belong to several groups of genera, some of which are closely related. Most of the 60 species of eagle are from Eurasia and Africa.[1] Outside this area, just 14 species can be found—2 in North America, 9 in Central and South America, and 3 in Australia.",
      3: "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range in color from blond to reddish-brown to black. ... Lions stand between 3.5 and 4 feet (1 and 1.2 meters) tall at the shoulder.",
      4: "A Tiger is a powerful carnivore, a hunter with sharp teeth, strong jaws, and a very agile body. They are the largest naturally occurring species of cat, of which the Siberian tiger is the largest, weighing up to 800 pounds and measuring up to 11 feet head to tail.",
      5: "Horses have oval-shaped hooves, long tails, short hair, long slender legs, muscular and deep torso build, long thick necks, and large elongated heads. The mane is a region of coarse hairs, which extends along the dorsal side of the neck in both domestic and wild species."
    };
    Map<int, String> animal_image = {
      0: "lib/images/cat.jpeg",
      1: "lib/images/dog.jpeg",
      2: "lib/images/eagle.jpeg",
      3: "lib/images/lion.jpeg",
      4: "lib/images/tiger.jpeg",
      5: "lib/images/horse.jpeg"
    };

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text("${index}"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              children: [
                Image(
                    image: AssetImage("${animal_image[index]}"),
                    width: MediaQuery.of(context).size.height),
                Text("${animal_des[index]}"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:const Text("Back"))
              ],
            ),
          )),
    );
  }
}
