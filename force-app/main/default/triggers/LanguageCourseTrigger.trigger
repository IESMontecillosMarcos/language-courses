trigger LanguageCourseTrigger on Languages_Course__c (after insert, after update, after delete) {

    if (Trigger.isInsert) {
        // Enviamos Correo.
        EmailManager.sendMail('marcosgldeveloper@gmail.com', 'Nuevo Curso Idiomas','Felicidades! Idioma creado.');
    }

}