import SwiftUI

struct ContentView: View {
  @State var name: String = ""
  @State var text: String = ""
  @State var nameVisibility: Bool = false
  private let sayHello = SayHello()

  var body: some View {
    VStack {
      VStack {
        TextField("名前を入力", text: $name)
          .textFieldStyle(RoundedBorderTextFieldStyle())
          .padding()
          .onChange(of: name) { newValue in
            nameVisibility = false
          }
          .accessibilityIdentifier("NameField")
        Button("送信") {
          text = self.sayHello.sayHello(name: name)
          nameVisibility = !name.isEmpty
        }
        .accessibilityIdentifier("SendButton")
      }
      if nameVisibility {
        Text(text)
          .padding()
          .accessibilityIdentifier("NameText")
      }
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
