//
//  ContentView.swift
//  DesignCode
//
//  Created by Wood Chen on 2020/4/18.
//  Copyright © 2020 Wood Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("UI Design")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                Text(/*@START_MENU_TOKEN@*/"certificate"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    
            }
            Image("Background")
        }
        .background(Color.black)
        .cornerRadius(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
