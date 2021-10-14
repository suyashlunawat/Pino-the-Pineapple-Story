//: [Previous](@previous)
import SwiftUI
import PlaygroundSupport

    
struct ContentView: View {
    @State var rotation = false
    @State var sfondo = "prima.jpeg"
    @State var valoreopacita = 1.0
    @State var repetition = true
    @State var cont = 0
//    @State var immaginescelta="prima.jpeg"
    @State var immagini:[String]=["prima.jpeg","dopo.jpeg","incidente.tiff"]
    
    var body: some View {
    ZStack{
        Image(uiImage: UIImage(named: sfondo)!)
            .resizable()
            .frame(width: 800, height: 590)
            .scaledToFill()
            .onTapGesture {
                valoreopacita=0.0
                               let timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: repetition) { timer in
                                   if(cont<=2){
                                      
                                       sfondo=immagini[cont]
                                       cont=cont+1;
                                   }else{
                                       timer.invalidate()
                                   }
                                   
                               }
                
            }
        Text ("Tap on the screen to see what happen")
            .foregroundColor(.white)
            .opacity(valoreopacita)
            .position(x: 400, y: 540)
            .shadow(radius: 5)
            .font(.title)
    }
}
}
PlaygroundPage.current.setLiveView(ContentView())

//: [Next](@next)
