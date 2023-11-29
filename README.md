# BebederoAutomatizado
Diseño e implantación de un sistema digital para la automatización de un bebedero para un perro con síndrome de Cushing.

# Descripción del Proyecto

Objetivos
Automatizar el suministro de agua al plato de una mascota considerando sus condiciones médicas, haciendo uso de una FPGA Nexys 4, se logro implentar a un nivel doméstico.

# Periféricos

VÁLVULA SOLENOIDE O ELECTROVÁLVULA DE 12V -------------------------------------------------------  
Permite el flujo, del agua hacia el plato, gracias a su alimentación.

RELÉ DE 5V --------------------------------------------------------------------------------------  
Dado que la válvula es activada a 12V, se requiere un instrumento externo que pueda ser activado por una FPGA y permita el pasó de la alimentación a la valvula, se compone de una bobina que al ser energizada mueve sus contactos internos para activar un circuito externo, en este caso el de la válvula.

SENSOR DE PROXIMIDAD POR ULTRASONIDO HCSR04 -----------------------------------------------------  
Este sensor es el cual se encunetra programado en la FPGA, este se encarga de detectar si el perrito esta cerca y asi activar el relé para activar la valvula y permitir el flujo de agua.

CELDA DE CARGA ---------------------------------------------------------------------------------  
Esta se encuentra programada en arduino, dado que resultó que es demasiado complicado implentar un codigo funcional capaz de leer los datos arrojados por la FPGA. Se encarga de evitar que el plato se deborde gracias a la medición del peso del agua.

A/D HX711 --------------------------------------------------------------------------------------
Convierte la señal analógica proveniente de la celda de carga en una digital capaz de ser leida por el arduino y en teoría por la FPGA.

ARDUINO UNO -------------------------------------------------------------------------------------
Es usado exclusivamente para amplificar el voltaje generado en la fpga cuando el sensor detecta el perro. Por otro lado se deseo implementar una celda de carga, para que funcione como una vascula y detecte cuando el nivel de agua del plato esta muy bajo, o muy alto, para evitar que se derrame agua.

ESTRUCTURICO ------------------------------------------------------------------------------------
Para la integración de todos estos periféricos fue necesario contruir una estructura en la cual se tiene, una base para el plato de agua, que cumple dos funciones: Acercar el plato al nivel del perro evitando qaue esfuerce la espalda y ser la base de la bascula. Así mismo, se encuentra una torre donde se soporta el tanque de agua de 4000 mL, o 13 descargas completas, en esta misma torre se encuntra asegurada la electroválvula y el sensor de proximidad. En la base de la torre se encuentra una pequeña estanteria donde se ubica la fpga, una protoboard y el arduino.

