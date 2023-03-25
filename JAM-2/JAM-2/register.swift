//
//  register.swift
//  JAM-2
//
//  Created by Mathis Borlet on 25/03/2023.
//

import SwiftUI

let lightGrayColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct register: View {
    
    @State var pseudo: String = ""
    
    var body: some View {
        VStack {
            userImage()
            type_name()
            pseudoName(pseudo: $pseudo)
            
            Button(action: {print("Button push")}) {
                EnterButton()
            }
        }
    }
}
    
    struct register_Previews: PreviewProvider {
        static var previews: some View {
            register()
        }
    }
    
    struct type_name: View {
        var body: some View {
            Text("Type your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
    }
    
    struct userImage: View {
        var body: some View {
            Image("illusion optique")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 75)
        }
    }
    
    struct EnterButton: View {
        var body: some View {
            Text("ENTER GAME")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
    }

struct pseudoName: View {
    
    @Binding var pseudo:String
    
    var body: some View {
        TextField("Pseudo", text: $pseudo)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
