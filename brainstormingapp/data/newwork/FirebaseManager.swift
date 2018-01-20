import Foundation
import FirebaseDatabase

class DatabaseManager {
    
    var ref = FIRDatabase.database().reference()
    
    func requestRooms(completion: (_ snapshot: FIRDataSnapshot) -> Void) {
        ref.child("rooms").observe(FIRDataEventType.value, with: { (snapshot) in
            
        })
    }
}
