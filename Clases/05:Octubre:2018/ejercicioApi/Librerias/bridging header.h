//
//  bridging header.h
//  ejercicioApi
//
//  Created by Gerardo Castillo on 06/10/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

#ifndef bridging_header_h
#define bridging_header_h


#endif /* bridging_header_h */

#import <CommonCrypto/CommonCrypto.h>


extension String {
    func sha1() -> String {
        let data = self.data(using: String.Encoding.utf8)!
        var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
        data.withUnsafeBytes {
            _ = CC_SHA1($0, CC_LONG(data.count), &digest)
        }
        let hexBytes = digest.map { String(format: "%02hhx", $0) }
        return hexBytes.joined()
        }
    }
