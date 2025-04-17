
//  ContentView.swift
//  zstack
//
//  Created by Turma02-8 on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Duda"
    var body: some View {
        VStack(alignment: .leading) {
            Text("Bem vinda, Duda")
                .font(.title)
                .padding(20)
            
            Spacer()
            VStack(alignment: .leading) {
                Text("Duda")
                    .position(x: 170, y: 10.0)

                    
            }
            
            ZStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .position(x: 130, y: 140)
                    .frame(width: 260, height: 500)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .zIndex(1.0)
                    .offset(x: 15)
                
        
            ZStack {
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 700)
                    .zIndex(1.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .offset(x: 10)
                
            }
            
                HStack {
                    Button(action: {
                        print("enter")
                    }){
                        Text("Enter")
                            .foregroundColor(.blue)
                            .font(.title)
                            .padding()
                            .position(x: 180, y: 650)
                    }
                    .background(
                    Image("fundo")
                        .blur(radius: 6)
                        .opacity(0.4)
                        .position(x: 30, y: 250))
                }
            

            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
