//
//  ContentView.swift
//  a202CP193A
//
//  Created by 申潤五 on 2022/3/27.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 10
    var body: some View {
        VStack{
            Text("\(emojiCount)")
                .padding()
            HStack{
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal,20)
        }
    }
    
    
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < 20 {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }

    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
