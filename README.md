# Understanding NFTs on Sui

>This guide introduces you to NFTs on the Sui blockchain. It walks you through how NFTs differ from fungible tokens in Sui’s object-centric model, where every asset is technically unique but can still achieve fungibility through standardization.
>
>By the end, you’ll have a clear grasp of how NFTs work on Sui, how they differ from fungible tokens, and how they can represent any unique digital or physical asset with verifiable ownership and provenance.


## Fungibility
Fungibility is the quality of an asset being interchangeable with other individual assets of the same type, where each unit has equal value and can be substituted without a loss of value or utility.

### The concept of Fungibility can be understood by comparing Fungible and Non-Fungible assets: 

**Fungible assets:** These assets can be swapped for one of the same kind without any loss of value. For example, a dollar bill is interchangeable with any other dollar bill, and five one-dollar bills are equal to one five-dollar bill.  

**Non-fungible assets:** These are **unique** and cannot be easily swapped for an identical item. For instance, a house, a specific piece of art, or a collectible item has its own unique characteristics and value, so one cannot be replaced by another. 


### Most newbies tend to confuse fungibility with liquidity but there's a difference between them:

**Fungibility** is about **interchangeability**, while **liquidity** is about **how quickly an asset can be converted into cash without a significant loss of value**. For example, a car is said to be liquid if it can be sold quickly, but it is not fungible because each car has unique features and value. 

## Everything on Sui is actually an NFT
This is how Sui differs from other blockchains. 

So because Sui is [object-centric](), **everything** on Sui is an object, and every object has their own globally unique identifier `ID: UID`, and every object has an owner.

This means that everything on Sui is **distinguishable** (therefore unique), and has an owner. And if you recall, **Uniqueness** is the **defining characteristic** of **non-fungibility**. So from this, we can now deduce that **everything on Sui** is **non-fungible**.

And if everything on Sui is non-fungible, then that also means that **every fungible token is actually a non-fungible token.**

> But then how does this even make sense? Fungiblity is a very crucial feature in finance

I know why this might sound confusing, but you see, there's more to actually understand about Fungibility. <br>Fungibility is **just** a concept.

Fungibility at its **core** is a **social and contractual property of an asset**. This means that Fungibility is defined by a higher-level protocol and must be accepted by its users. The underlying **technical structure** of how it works doesn't really matter.

So now that means, despite the uniqueness of each object on Sui (the technical structure), objects can still achieve fungibility through **standardization**.

### Coins are considered fungible by the Sui ecosystem for the following reasons:


- **Contractual agreement**: The smart contract that governs the token standard defines what makes a coin "fungible". For Sui's standard `Coin` implementation, `sui::coin_registry`, the contract logic dictates that any unit of the same `Coin<T>` type is **interchangeable** with any other unit of that same type. And if you recall, **Interchangeability** is the **defining characteristic** of **fungibility**.

- **Identical properties**: A coin object's fungibility comes from the fact that its value is its only meaningful property. The smart contract also treats all coins of the same type and value identically. 

    So for example, a coin object with the value `5` is functionally and economically identical to any other coin object with the value `5` of the same token type. Just like how a one-dollar bill is functionally and economically identical to any other one-dollar bill, and five one-dollar bills are equal to one five-dollar bill. 

    The globally unique identifier is simply a feature that enables the system to track ownership and transactions, but that doesn't affect the token's value or utility. Just like how every dollar bill has a unique serial number, but that doesn't affect its value or utility.

- **Automatic "coin smashing"**: When you make a transaction, Sui has a feature called "gas smashing" (part of Programmable Transaction Blocks). This automatically merges smaller coin objects into larger ones, effectively abstracting away the existence of individual coin objects with unique IDs from the user's perspective. It reinforces the perception that you hold a balance of a single fungible token, rather than a collection of unique, small objects.


### So you can always think about it this way:

Every physical dollar bill has a **unique** serial number. Technically, this makes each bill a unique, non-fungible physical object.

However, the bank, government, me, you, and all economic actors **agree** to treat these physical objects as fungible representations of a dollar. One dollar bill is worth exactly the same as another, **regardless** of its serial number. You don't get a discount for a brand new bill or a bonus for a rare one.

And when you check your bank account online, you just see a single balance. Whether the bank's system tracks your money in various internal objects with unique IDs or not, that complexity is **hidden** from you. You don't have to think about which specific dollar in circulation is being spent, because the system handles the **abstraction of fungibility**. 

### So in conclusion:

The presence of a globally unique identifier ***does*** make each coin object technically unique, but that technical uniqueness is irrelevant from the perspective of the token's economic properties. 

The smart contract and the wider Sui ecosystem treat these technically unique objects as practically fungible. **The critical point once again is that Fungibility is a social and contractual property of an asset**, not just a technical property of its identifier. 



### So, what can NFTs be used for?
NFTs represent a whole range of elements, anything from digital art, digital fashion items, collectible sports cards, virtual real estate, games skins and characters, music albums, ownership licenses and even physical assets, and many more. 

Basically, NFTs can be used for any asset that needs to be **differentiated** from each other in order to prove their value, or scarcity.


### Why NFTs Matter (and How They Change Art & Music)

**For the buyers**, NFTs provide a secure certificate of ownership over the asset it represents, protecting its value.

**For the sellers**, NFTs make it not only possible to sell something today, but also to keep earning from it in the future. Artists in particular have struggled to earn rewards if their work appreciates in value. NFTs can be programmed to allow the original creator to collect money each time the token moves hands.

**NFTs help both parties** by providing tamper-proof, transparent digital certificates of ownership **and** origin for both physical and digital items. By using blockchain technology, NFTs create a **permanent and unalterable record** that verifies authenticity, prevents counterfeiting, and tracks the history of an asset from its creation.


### Why are NFTs so expensive?
Like any other asset, supply and demand drives the price. Due to the scarce nature of NFTs, and the high demand for them, people are often willing to pay a lot of money for them. 

Also, a lot of people see NFTs as an investment opportunity, because they can resell the NFT they bought for a higher price.

NFTs markets
Those are the most knowns marketplaces for NFTs where you can buy and sell NFTs that represent all the things I mentioned above.

some examples are: tradeport, etc

is an nft basically an object but with images?
Yes, on Sui, an NFT is essentially just an object—but with some fields that typically include image data or a URL to an image.

Key Points:
Everything on Sui is an object. Every object is unique, non-fungible, and owned. This means every NFT is an object, but not every object is necessarily an NFT.
NFTs usually have metadata fields like name, description, and url (which often points to an image or other media)

is there anyway i could differntiate them though?

like i said earlier there really is no unique difference between nfts (like traditional jpeg nfts) from other objects, asides maybe the presence of an image and then the metadata.


On Sui, there are two types of NFTs, which are:

1. [Regular NFTs]()
2. [Soulbound NFTs]()


Here are some actions you can perform: #fix this heading sha
[how to burn an nft](link to it) and reiterate for more of them