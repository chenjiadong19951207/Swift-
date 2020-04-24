//
//  Home.swift
//  DesignCode
//
//  Created by Wood Chen on 2020/4/22.
//  Copyright © 2020 Wood Chen. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var show = false
    var body: some View {
        ZStack {
            Button(action: {self.show.toggle()}) {
                Text("Open menu")
            }
            MenuView(show: $show)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct MenuRow: View {
    var image = "creditcard"
    var text = "My Account"
    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundColor(Color("icons"))
                .frame(width:32,height:32)
            Text(text)
                .font(.headline)
            Spacer()
        }
    }
}


struct Menu : Identifiable{
    var id = UUID()
    var title:String
    var icon:String
    
}

let menuData = [
    
    Menu(title: "My Account",icon:"person.crop.circle"),
    Menu(title: "Billing", icon: "creditcard"),
    Menu(title: "Team", icon: "person.and.person"),
    Menu(title: "Sign out", icon: "arrow.uturn.down")
]





struct MenuView: View {
    var menuItems = ["My Account","Billing","Team","Sign out"]
    var menu = menuData
    @Binding var show :Bool
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            ForEach(menu){
                item in MenuRow(image:item.icon,text:item.title)
                
            }
            
            //            MenuRow(image: "creditcard", text: menuItems[1])
            //            MenuRow(image: "person.and.person", text: menuItems[2])
            //            MenuRow(image: "arrow.uturn.down", text: menuItems[3])
            Spacer()
        }
        .padding(30)
        .padding(.top,20)
        .frame(minWidth:0,maxWidth:.infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing,60)
        .shadow(radius: 20)
        .rotation3DEffect(Angle(degrees: show ? 0 : 60), axis: (x: 0, y: 10.0, z: 0))
        .offset(x:show ? 0 : -UIScreen.main.bounds.width)
        .onTapGesture {
            self.show.toggle()
            
        }
    }
}
