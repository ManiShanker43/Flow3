import CryptoPoops from 0x01
import NonFungibleToken from 0x02

pub fun main(acc:Address):[UInt64] {
 let reff= getAccount(acc).getCapability(/public/Collection)
           .borrow<&CryptoPoops.Collection{CryptoPoops.MyCollectionPublic}>()
           ??panic("this acc has no collection")


return reff.getIDs()
}