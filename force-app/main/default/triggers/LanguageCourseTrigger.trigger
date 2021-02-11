trigger LanguageCourseTrigger on Languages_Course__c (after insert, after update, after delete) {

    if (Trigger.isInsert) {
        // Enviamos Correo.
        // Mejora: Mandar correo al usuario actual. Mensaje de Error si falla.
        EmailManager.sendMail('marcosgldeveloper@gmail.com', 'Nuevo Curso Idiomas','Felicidades! Idioma creado.');
    }

}