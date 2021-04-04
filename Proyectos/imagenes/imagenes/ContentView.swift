//
//  ContentView.swift
//  imagenes
//
//  Created by Maria Teresa Jimenez on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Bienvenido").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("logo").resizable().scaledToFill().scaledToFit()
            Spacer()
            Image("foto").resizable().padding(30).scaledToFit().background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)).shadow(color: Color.gray, radius: 5)
            
            Text("Todos los derechos reservados 2021").font(.caption)
            //Icono directamente del sistema
            Image(systemName: "moon.circle.fill").resizable().padding(20).scaledToFit().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
