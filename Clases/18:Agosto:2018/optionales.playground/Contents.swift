//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Book {
    var name:String
    var publicationYear:Int?
}


let book1 = Book(name: "Harry Potter", publicationYear: nil)


struct Toddler{
    var name: String
    var monthsOld: Int
    init?(name:String,monthsOld:Int){
        if monthsOld < 12  {
            return nil
        }else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let myBoy = Toddler(name: "Lalito", monthsOld: 24)

if let unwrappedBoy = myBoy{
    print(unwrappedBoy.monthsOld)
}else{
    print("No se pudo instanciar la estructura")
}


struct Person{
    var age: Int = 0
    var residence:Residence?
}

struct Residence{
    var address: Addres?
}

struct Addres{
    var buildingNumber:String?
    var street:String?
    var apartamentNumber:String?
}

let person = Person(age: 10, residence: Residence(address: Addres(buildingNumber: "23", street: "Gustavo Minutti", apartamentNumber: "120")))
if let theResidence = person.residence{
    if let theAddres = theResidence.address{
        if let theApartementNumber = theAddres.apartamentNumber{
            print("He/She lives in apartament number \(theApartementNumber)")
        }
    }
}


if let theApartamentNumber = person.residence?.address?.apartamentNumber{
    print("He/She lives in apartament number \(theApartamentNumber)")
}







