cooking! checkback later




 Fungibility is the quality of an asset or good being interchangeable with other individual goods or assets of the same type, where each unit has equal value and can be substituted without a loss of value or utility.

The concept of fungibility can be understood by comparing fungible and non-fungible assets: 

Fungible assets: These assets can be swapped for one of the same kind without any loss of value. For example, a dollar bill is interchangeable with any other dollar bill, and five one-dollar bills are equal to one five-dollar bill.  

Non-fungible assets: These are unique and cannot be easily swapped for an identical item. For instance, a house, a specific piece of art, or a collectible item has its own unique characteristics and value, so one cannot be replaced by another. 


Most newbies tend to confuse fungibility with liquidity but there's a difference between them:

Fungibility is about interchangeability, while liquidity is about how quickly an asset can be converted into cash without a significant loss of value. For example, a car is said to be liquid if it can be sold quickly, but it is not fungible because each car has unique features and value. 

 

 On Sui, everything is an object, and every object has their own globally unique identifier `ID: UID`, and every object has an owner, meaning everything on sui is unique and has an owner. And if you recall, Uniqueness is the defining characteristic of non-fungibility. So from this, we can now deduce that everything on sui is non-fungible. And if everything on Sui is non-fungible then that also means that every fungible token is actually a non-fungible token.

But don't be confused Anon(what we call people we don't know in web3)

Fungibility at its core is a social and contractual property of an asset. Fungibility is defined by a higher-level protocol, not just the underlying technical structure.

So despite the technical uniqueness of each object, objects can achieve fungibility through standardization.

Coins are considered fungible by the Sui ecosystem for the following reasons:


- **Contractual agreement**: The smart contract that governs the token standard defines what makes a coin "fungible." For Sui's standard `Coin` implementation (`sui::coin_registry`), the contract logic dictates that any unit of the same `Coin<T>` type is interchangeable with any other unit of that same type.

- **Identical properties**: A coin object's fungibility comes from the fact that its value is its only meaningful property. The smart contract treats all coins of the same type and value identically. For example, a coin object with the value `5` is functionally and economically identical to any other coin object with the value `5` of the same token type. The globally unique identifier is simply metadata for the system to track ownership and transactions; it doesn't affect the token's value or utility.

- **Automatic "coin smashing"**: When you make a transaction, Sui has a feature called "gas smashing" (part of Programmable Transaction Blocks). This automatically merges smaller coin objects into larger ones, effectively abstracting away the existence of individual coin objects with unique IDs from the user's perspective. It reinforces the perception that you hold a balance of a single fungible token, rather than a collection of unique, small objects. 

Analogy: Numbered bank notes vs. digital bank balance

Every physical banknote has a unique serial number. Technically, this makes each bill a unique, non-fungible physical object.

However, the bank, government, and all economic actors agree to treat these physical objects as fungible representations of a dollar. One dollar bill is worth exactly the same as another, regardless of its serial number. You don't get a discount for a brand new bill or a bonus for a rare one.

Digital abstraction: When you check your bank account online, you just see a single balance. The bank's system likely tracks your money in various internal objects with unique IDs, but that complexity is hidden from you. You don't have to think about which specific dollar is being spent; the system handles the abstraction of fungibility. 

So in conclusion:

The presence of a globally unique identifier *does* make each coin object technically unique, but that technical uniqueness is irrelevant from the perspective of the token's economic properties. 

The smart contract and the wider Sui ecosystem treat these technically unique objects as practically fungible. The critical point once again is that fungibility is a social and contractual property of an asset, not just a technical property of its identifier. 





What can NFTs be used for?
NFTs represent a whole range of elements, anything from digital art, digital fashion items, collectible sports cards, virtual real estate, games skins and characters, music albums, ownership license and even physical assets and many more, basically any assets that need to be differentiated from each other in order to prove their value, or scarcity


What’s special about NFTs and why they can change industries like music or art?
For the buyers, NFTs provide a secure certificate of ownership over the asset it represent, protecting its value.

For a sellers, NFTs make it not only possible to sell something today, but also to keep earning in the future. Artists in particular have struggled to earn rewards if their work appreciates in value. NFTs can be coded to allow the original creator to collect money each time the token move hands.

NFTs can return the power and control back into the hands of the artists!

Why NFTs are so expensive?
Like any asset or coin, supply and demand are driving the price. Due to the scarce nature of NFTs and the high demand for them people are often prepared to pay a lot of money for them.

Also, a lot of people see those NFTs as an investment opportunity, they can resell the NFT they bought for higher price.

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