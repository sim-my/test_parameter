import SwiftUI

struct ContentView: View {
    @State private var param1: String = ""
    @State private var param2: String = ""
    @State private var param3: String = ""
    @State private var param4: String = ""

    var body: some View {
        VStack {
            TextField("Parameter 1", text: $param1)
                .padding()
            TextField("Parameter 2", text: $param2)
                .padding()
            TextField("Parameter 3", text: $param3)
                .padding()
            TextField("Parameter 4", text: $param4)
                .padding()

            Button("Analyze Parameters") {
                analyzeParametersWithWarnings(param1: param1, param2: param2, param3: param3, param4: param4)
            }
            
            Button("Analyze Parameters") {
                analyzeParametersWithNoWarnings(param1: param1, param2: param2)
            }
        }
        .padding()
    }

    func analyzeParametersWithWarnings(param1: String, param2: String, param3: String, param4: String) {
        print("Gives warning")
    }
    
    func analyzeParametersWithNoWarnings(param1: String, param2: String) {
        print("No warnings")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
