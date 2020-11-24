;;==========================================================================================
;;  SISTEMA EXPERTO PARA CONSULTAR LOS MOVIMIENTOS DE UN ROBOT VIRTUAL
;;En el siguiente sistema experto se crearán las reglas para hacer que un robot virtual
;;pueda moverse y salir de un escenario en especifico

;;Definimos un template para todas nuestras reglas
(deftemplate situacion-sensores
                (slot SI)
                (slot SD) )

;;Definimos las reglas para el movimiento de nuestro robot
(defrule robot1-0
            (situacion-sensores
                    (SI blanco)
                    (SD blanco) )
            => (printout t crlf "Con el SI y SD en blanco -> Avanzar." crlf crlf) )

(defrule robot1-1
            (situacion-sensores
                    (SI blanco)
                    (SD negro) )
            => (printout t crlf "Con el SI en blanco y SD en negro -> Girar izquierda." crlf crlf) )

(defrule robot1-2
            (situacion-sensores
                    (SI negro)
                    (SD blanco) )
            => (printout t crlf "Con el SI en negro y SD en blanco -> Girar derecha." crlf crlf) )

(defrule robot1-3
            (situacion-sensores
                    (SI negro)
                    (SD negro) )
            => (printout t crlf "Con el SI y SD en negro -> Retroceder y girar." crlf crlf) )