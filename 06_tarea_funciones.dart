/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void printLn(String msg) => stdout.writeln(msg);

String? readLn() => stdin.readLineSync();

void calcSalary({String title = '', double salary = 0.0}) {
  printLn('=========== $title =============');

  printLn('¿Cúal es su nombre?');
  String nombre = readLn() ?? '';

  printLn('¿Qué edad tienes?');
  String edad = readLn() ?? '';

  printLn('¿En qué país naciste?');
  String pais = readLn() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  printLn('$title sin deducciones');
  printLn(usuario.toString());

  double salario = salary;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  printLn(usuario.toString());
}

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  calcSalary(title: 'Usuario 1', salary: 1500);

  // Persona 2
  calcSalary(title: 'Usuario 2', salary: 1800);
}
