//
//  Notificaciones.swift
//  v14
//
//  Created by MacBook Pro on 27/11/17.
//  Copyright © 2017 MacBook Pro. All rights reserved.
//

import Foundation
import UserNotifications

func Recordatorio(){
        //Contenido
        let content = UNMutableNotificationContent()
        content.title = "Recordatorio"
        content.body = "No olvide medir su ritmo cardiaco"
        content.badge = 1
        content.sound = UNNotificationSound.default()
        
        // Horario
        var dateComponents = DateComponents()
        dateComponents.hour = 18
        dateComponents.minute = 40
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Request
        let request = UNNotificationRequest(identifier: "RecordatorioRC", content: content, trigger: trigger)
        
        //Añade al Centro de Notificaciones
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Se ha producido un error: \(error)")
            }
        }
    }

func Nota(){
    //Contenido
    let content = UNMutableNotificationContent()
    content.title = "¿Sabía que..."
    content.body = "El 80% de los infartos de miocardio son prevenibles?"
    content.badge = 1
    content.sound = UNNotificationSound.default()
    
    // Horario
    var dateComponents = DateComponents()
    dateComponents.hour = 18
    dateComponents.minute = 35
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    
    // Request
    let request = UNNotificationRequest(identifier: "NotaI", content: content, trigger: trigger)
    
    //Añade al Centro de Notificaciones
    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    UNUserNotificationCenter.current().add(request) {(error) in
        if let error = error {
            print("Se ha producido un error: \(error)")
        }
    }
}

func Estado(){
    //Contenido
    let content = UNMutableNotificationContent()
    content.body = "¿Cómo se siente hoy?"
    content.badge = 1
    content.sound = UNNotificationSound.default()
    
    // Horario
    var dateComponents = DateComponents()
    dateComponents.hour = 18
    dateComponents.minute = 45
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    
    // Request
    let request = UNNotificationRequest(identifier: "EstadoS", content: content, trigger: trigger)
    
    //Añade al Centro de Notificaciones
    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    UNUserNotificationCenter.current().add(request) {(error) in
        if let error = error {
            print("Se ha producido un error: \(error)")
        }
    }
}
