// in positional arguments when embracing arguments within '[]' means they can be optional, also you can add the '?' after the value type so it can be either the value type or null or you can assign the value directly
// Example: void greet(String msg, [String? name = '<enter name>', int age = 20]) {}

void greet(String msg, [String name = '<enter name>', int age = 20]) {
  print('$msg $name - $age');
}

void greet2(String msg, {required String name, int times = 10}) {
  print('Greet 2: $msg $name! - $times');
}

void main() {
  greet('Hello!', 'Brayan');

  greet2('Greetings', times: 20, name: 'Brayan');
}
