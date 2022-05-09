/**

# The contract of Floid Airdrop App

*/
import NonFungibleToken from "../core/NonFungibleToken.cdc"
import FungibleToken from "../core/FungibleToken.cdc"
import FloidProtocol from "../FloidProtocol.cdc"
import Floid from "../Floid.cdc"
import FloidWhitelist from "./FloidWhitelist.cdc"

pub contract FloidAirdrop {

    /**    ___  ____ ___ _  _ ____
       *   |__] |__|  |  |__| [__
        *  |    |  |  |  |  | ___]
         *************************/

    pub let FloidAirdropPoolStoragePath: StoragePath
    pub let FloidAirdropPoolPublicPath: PublicPath

    /**    ____ _  _ ____ _  _ ___ ____
       *   |___ |  | |___ |\ |  |  [__
        *  |___  \/  |___ | \|  |  ___]
         ******************************/

    pub event ContractInitialized()
    pub event FloidAirdropNonFungibleTokenClaimed(nftType: Type, nftID: UInt64, recipient: Address)
    pub event FloidAirdropFungibleTokenClaimed(nftType: Type, amount: UFix64, recipient: Address)

    /**    ____ _  _ _  _ ____ ___ _ ____ _  _ ____ _    _ ___ _   _
       *   |___ |  | |\ | |     |  | |  | |\ | |__| |    |  |   \_/
        *  |    |__| | \| |___  |  | |__| | \| |  | |___ |  |    |
         ***********************************************************/

    // pub resource Airdrop


    init() {
        self.FloidAirdropPoolStoragePath = /storage/FloidAirdropPoolPath
        self.FloidAirdropPoolPublicPath = /public/FloidAirdropPoolPath

        emit ContractInitialized()
    }
}