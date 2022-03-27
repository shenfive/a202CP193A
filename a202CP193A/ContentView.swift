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
            ScrollView{
                CardView(content: "👍").frame(width: 90, height: 120, alignment: .center)
                CardView(content: "👍").frame(width: 90, height: 120, alignment: .center)

                
            }
            
            Spacer()
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

struct CardView:View{
    var content:String
    @State var isFaceUp = true
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp == true{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
