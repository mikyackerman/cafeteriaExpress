

# Cafetería Express

  
![](https://github.com/migueshock/cafeteriaExpress/blob/master/17200739_1635687669835626_231279714_o.jpg)

 

---

 
### Introducción.

> - El proyecto esta orientado a la cafeteria del Instituto Tecnologico de Mexicali, con el proposito de brindarles a todos companeros y docentes el tiempo que les lleva el adquirir sus alimentos, asi tambien como la distancia, y el tiempo que les lleva al realizarlo.

---

### Planteamiento del problema

> - Uno de los grandes problemas que tenemos la mayoria de los alumnos  es el que no medimos el tiempo que nos lleva al realizar una actividad. En este caso nos enfocamos  en el area de la  cafeteria ya que es importante para nuestra rutina del diario.  Como por ejemplo muchas de las veces no tenemos el tiempo  suficiente para poder ingerir algun alimento en un dia de escuela, " O tenemos poco tiempo o tenemos mucho tiempo" ,para evitarnos ese  tipo de  problemas de tiempo. 

---

### Desarrollo 

> - Se llevo a cabo un calculo de todas las rutas que nos conducen de un edificio hacia la cafeteria, asi como tambien se tomo informacion de cuanto tiempo dura un alimento es ser preparado, el tiempo de la fila, cuanto tiempo hacen al consumirlo, asi como tambien cuanto tiempo les lleva el trasladarse. Una vez teniendo dichos resultados realizamos un software basado en Prolog para asi poder evitar la llegada tarde a una clase o bien administrar nuestro tiempo.

---

### Tipos de caminos

 
#### Camino Directo

 

Ruta del edificio L a la cafetería

 

![](https://github.com/mikyackerman/cafeteriaExpress/blob/master/RUTACAFERTERIA%20AL%20(L).png)


Ruta de edificio G a la cafetería
 

![](https://github.com/migueshock/cafeteriaExpress/blob/master/cafeteria%20ruta%20g%20al%20cafeteria.jpg)

 
---

#### Camino Random

Ruta del L a la cafetería y de la  cafetería al G 

![](https://github.com/mikyackerman/cafeteriaExpress/blob/master/trazolg.png)


Ruta del U a la cafetería y de la cafetería al D 

![](https://github.com/mikyackerman/cafeteriaExpress/blob/master/trazoud.png)
 

---

#### Trabajo a futuro

Se espera realizar una aplicación de entrega de comidas dentro a la institución atreves de una aplicación móvil  ,para ello necesitaremos un grupo de alumnos para que lleven a cabo dicha actividad  (para ello se lanzara una convocatoria para que con eso puedan liberar su servicio social ), el propósito seria que los alumnos que deseen hacer el servicio social  en este programa  deberán realizar entregas de comidas a cualquier alumno, docente de la institución ,dicha aplicación se basara en la anterior nos mostrara el tiempo de preparación el tiempo de llegada. El usuario podrá rastrear donde viene la comida. Para esta aplicación nos basaremos en uber está para más información.

 

[Click
aqui](http://tecnologia.hola.com/uber-eats-tu-comida-sobre-ruedas/3416/)

---

### Aplicación

Crearemos una aplicacion para estudiantes del Tecnologico de Mexicali en la cual el usuario llenara unos campos, dependiendo de sus 
respuestas calculara un tiempo estimado en segundos o minutos y este le avisará si  es posible llegar a su clase a tiempo o no. 

---

### Código


Estos son un par de ejemplos de los casos posibles que un alumno podria tener al querer saber si puede llegar a clase a tiempo:


SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, no = no hay hora libre.

> recorrido(SI,TC,F,SF,no):-


SI = Salon Inicial, TC = Tipo de compra, F = Tamaño de la fila, SF = Salon Final, si = si hay hora libre, BU = Que fue al baño a hacer del uno, CB = Cambio de baño por si estaban cerrados los banios donde fue y se fue a otro edificio.

> recorrido(SI,TC,F,SF,si,BU,CB):-

Y al final de cada caso un mensaje que nos avise si llegamos a tiempo o no:

> write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
> write('Si alcanzas a llegar a tu clase').

> write('Tardas '), write(A), write(' segundos o '), write(Minutos), write(' minutos en llegar de donde te encuentras a tu clase'), nl,
> write('No alcanzas a llegar a tu clase').
