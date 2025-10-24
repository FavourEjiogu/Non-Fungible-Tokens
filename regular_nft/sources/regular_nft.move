/// A Regular NFT that can be minted by anybody

module regular_nft::regular_nft;

use std::string; // Imports the standard library's string module for string operations.
use sui::event; // Imports the Sui event module to emit and handle events.
use sui::url::{Self, Url}; // Imports the Sui URL module and the Url type for working with URLs.


/* The type identifier of NFT. The NFT will have a type
tag of kind: `package_object::module::struct`. Check the ReadMe for more info */
public struct MyNFT has key, store { // You actually do not need to explicitly add "store" if you already have "key". This is because, in Move, the "key" ability automatically implies "store" for all fields inside the struct. Check the ReadMe for more info
    id: UID, // Unique on-chain object ID
    
    name: string::String, // Name field (Stores the name of the NFT)
    
    description: string::String, // Description field (Stores the description of the NFT)
    
    url: Url, // URL field (Stores a url that represents the NFT visually)
    // TODO: allow custom attributes
}

// ===== Events ===== (Events are not compulsory in Sui Move smart contracts but it improves the UX(User Experience), check the ReadMe for more info)

public struct NFTMinted has copy, drop { // This struct is NOT an object. Instances of this struct can be copied, and destroyed (dropped). Check the ReadMe for more info.
    
    object_id: ID, // This will store the unique identifier of the NFT that was minted.
    
    creator: address, // This will store the address of the account that minted the NFT.
  
    name: string::String, // This will store the name of the NFT.
}
// Please take note: Not to be confused with "MyNFT", "NFTMinted ONLY applies to events and emission of events.


// ===== Entrypoints ===== 
#[allow(lint(self_transfer))] // This is an attribute that tells the Move compiler to ignore the warning that appears when an object is transferred to the same address that initiated the transaction. You'll see why below.

public fun mint_to_sender( // This declares a public function named mint_to_sender. It can be called from outside the module.

    name: vector<u8>, // The function takes a parameter "name", which is a vector of bytes. This will be converted to a string and used as the NFT's name.

    description: vector<u8>, // The function takes a parameter "description", also a vector of bytes, to be used as the NFT's description.

    url: vector<u8>, // The function takes a parameter "url", a vector of bytes, to be used as the NFT's URL (i.e., The image)

    ctx: &mut TxContext, // The function takes a mutable reference to the transaction context, which is required for creating new objects and accessing the sender's address.
) {
    let sender = ctx.sender(); // This extracts the address of the sender of the transaction (the account that called the function) and assigns it to a variable "sender"

    let nft = MyNFT { // This line creates a new instance of the MyNFT struct and stores it in the variable "nft".

        id: object::new(ctx), // This creates a new Unique on-chain object ID for the NFT using the transaction context. This is required for ALL Sui objects.

        name: string::utf8(name), // This converts the "name" parameter (a vector of bytes) into a "String" type. This becomes the NFT's name.

        description: string::utf8(description), // This converts the "description" parameter (a vector of bytes) into a "String" type. This becomes the NFT's description.

        url: url::new_unsafe_from_bytes(url), // This converts the "url" parameter (a vector of bytes) into a "Url" type. This is a link to the NFT's image.
        

    };

    event::emit(NFTMinted { // This line calls the "emit" function from the "event" module. It is used to publish (emit) an event to the blockchain. Check the ReadMe for more info
        object_id: object::id(&nft), // This sets the "object_id" field of the "NFTMinted" event. Check the ReadMe for more info
        creator: sender, // This sets the "creator" field of the "NFTMinted" event. Check the ReadMe for more info
        name: nft.name, // This sets the name field of the NFTMinted event. Check the ReadMe for more info
    });

    transfer::public_transfer(nft, sender); // This line transfers ownership of the "nft" object to the "sender" address. After this call, the "sender" will be the new owner of the NFT on-chain.
}


// If you cloned this repo, please ensure to read the README.md