Usuario (Actor): Inicia la interacción solicitando la actualización del SetPoint al CoolManager.

CoolManager (Participante): Activa la lógica para actualizar el SetPoint y simultáneamente inicia un temporizador de reset.

SetPoint (Participante): Recibe la solicitud de actualización del CoolManager y también inicia un temporizador de reset.

Timer (Participante): Espera un período de tiempo determinado.

Timer (Participante): Si el temporizador expira sin confirmación del usuario, notifica al SetPoint para realizar el reset.

Usuario (Actor): Confirmar el cambio antes de que expire el temporizador. En este caso, el temporizador se invalida.

CoolManager (Participante): Invalida el temporizador de reset y actualiza el SetPoint.

SetPoint (Participante): Indica al CoolManager que el SetPoint ha sido actualizado.

CoolManager (Participante): Responde al usuario indicando si la operación fue un éxito o un fracaso.

Este diagrama muestra la secuencia de eventos y las interacciones entre los actores y participantes, destacando la actualización del SetPoint y la gestión de un temporizador para manejar el tiempo de confirmación del usuario. La activación y desactivación de los participantes indican el período en el que están activos durante la secuencia de eventos.

