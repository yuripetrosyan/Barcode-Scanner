

import SwiftUI


struct BarcodeScannerView: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                
                ScannerView().clipShape(
                RoundedRectangle(cornerRadius: 19.0, style: .continuous))
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .padding(3)

                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .fontWeight(.medium)
               
                
                Text("Not Yet Scanned")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                
                  
            }
            .navigationTitle("Barcode Scanner")
            
        }
        
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
