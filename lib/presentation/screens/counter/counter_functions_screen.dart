import 'package:flutter/material.dart';

// shortcut -> stles
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Functions',
          style: TextStyle(color: Colors.orangeAccent),
        ),

        // `leading` izquierdo del appbar
        // `actions` los coloca del lado derecho del appbar
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded, color: Colors.white70)),
        ],
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', // si el valor no es estatico remover el const
                style: const TextStyle(
                    fontSize: 160,
                    fontWeight: FontWeight.w100,
                    color: Colors.white70)),
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25, color: Colors.white70))
            // podemos hacer uso de if pero no else
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
                clickCounter = 0;
                setState(() {}
              );
            }
          ),

          const SizedBox(height: 10),

          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {}
              );
            }
          ),

          const SizedBox(height: 10), // como un div con cierta altura

          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
                clickCounter++;
                setState(() {}
              );
            }
          ),

        ],
      ),
    );
  }
}



// Basicamente es un componente
class CustomButton extends StatelessWidget {

  final IconData icon;
  // para econtrar el tipo de dato que utiliza onPressed dar click en -> FloatingActionButton y buscarlo
  final VoidCallback? onPressed;

  // lo primero que sera requerido el icon, pero no lo detecta flutter como argumento
  // const CustomButton(this.icon, {
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5, // sombreado de botones
      backgroundColor: Colors.orange.shade100,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
