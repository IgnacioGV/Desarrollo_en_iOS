//
//  ContentView.swift
//  Stacks
//
//  Created by Maria Teresa Jimenez on 03/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Solo un stack puede contener 10 elementos
        VStack{
            Text("LargeTitle").font(.largeTitle).foregroundColor(.accentColor).padding().background(Color.yellow)
            Text("Title").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Text("Title2").font(.title2).foregroundColor(.purple)
            Text("Title3").font(.title3).foregroundColor(.secondary)
          
            Text("Body").font(.body).bold()
            Text("HeadLine").font(.headline).padding(.bottom, 100)
            Text("SubHeadLine").font(.subheadline).italic()
            Text("Caption").font(.caption).strikethrough()
            
            ZStack{
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.red)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.green).padding(20)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.blue).padding(40)
                
                HStack{
                    Text("Elemento 1")
                    Text("Elemento 2")
                }
            }
            
            HStack{
                Text("Inicio").font(.caption).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(10)
                Text("Productos").font(.caption).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(10)
                Text("Servicios").font(.caption).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(10)
                Text("Contacto").font(.caption).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).padding(10)
            }
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
