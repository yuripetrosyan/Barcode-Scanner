

import SwiftUI


struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                ScannerView(scannedCode: $scannedCode).clipShape(
                RoundedRectangle(cornerRadius: 19.0, style: .continuous))
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .padding(3)

                Spacer().frame(height: 60)
                
                
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .fontWeight(.medium)
               
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                
                  
            }
            .navigationTitle("Barcode Scanner")
            
        }
        
        
        
    }
}

#Preview {
    BarcodeScannerView()
}
