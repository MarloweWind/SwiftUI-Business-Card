//
//  ContentView.swift
//  SwiftUI Business Card
//
//  Created by Алексей Мальков on 20.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         ZStack{
            Color(red: 0.32, green: 0.58, blue: 0.54)
                .ignoresSafeArea()
            VStack {
                Image("picofme")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Alexey Malkov")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 40)
                    .foregroundColor(.white)
                    .overlay(HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                        Text("+7 985 448 90 09")
                    })
                    .padding()
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 40)
                    .foregroundColor(.white)
                    .overlay(HStack {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.blue)
                        Text("marlowe.wind@gmail.com")
                    })
                    .padding(.all)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            
    }
}
