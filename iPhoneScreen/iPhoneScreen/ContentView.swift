//
//  ContentView.swift
//  iPhoneScreen
//
//  Created by Bertuğ Horoz on 2.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(spacing: 30){
                ForEach(1...5, id: \.self) { rectangle in
                    HStack(spacing: 30){
                        ForEach(1...4, id:\.self){ item in
                            RoundedRectangle(cornerRadius: 12)
                                .frame(width: 60, height: 60)
                        }
                    }
                }
            } // : VSTACK
            Spacer()
            ZStack{
                HStack(spacing: 30){
                    ForEach(1...4, id: \.self) { four in
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 60, height: 60)
                    }
                }
                .offset(x: 0, y: 40)
                .zIndex(1)
                Capsule()
                    .frame(width: UIScreen.main.bounds.width - 15, height: UIScreen.main.bounds.height / 8)
                    .offset(x: 0, y: 40)
                    .foregroundColor(Color(.systemGray))
                    .opacity(0.6)
                    .shadow(color: .black, radius: 30, x: 20, y: 20)
            }
        } // : VSTACK
        .background(content: {
            Image("pexels")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea(.all)
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
