// https://eips.ethereum.org/EIPS/eip-7425

ERC-74XX25: ERC-XXXX Multichain Supply Extension

Title: ERC-XXXX Multichain Supply Extension

Short Description: An ERC-20 multichain extension to determine token boundaries and supply



Authors
----------

Created	2023-06-30

Discussion Link	https://ethereum-magicians.org/t/eip-7425-tokenized-reserve/15297

Requires	EIP-20

Table of Contents



Abstract
----------

Crosschain Token interface to explore supply as a guard of Tokens value.

There are not multichain tokens today. There are tokens in different networks under the same name but nothing defines the perimeter of a multichain token.



Motivation
----------

In economic terms, the value of a token is paramount. The value is represented by price. To capture correct price we must address cross chain.

Multichain token should be manage themselves without intervention of the issuer.

Investor in Multichain token should know the perimeter and supply at any time.



Rationale
---------

Fragmentation is an issue. Fragmentation ruins user interface.

To overcome fragmentation, we need multichain tokens.

Supply is the more important parameter in a token definition. Variation of the supply determines the nature of the tokens and the peg.

Multichain tokens cannot control their cross supply. This brings problems and destroy decentralization.

This standard proposes an exntension to control cross supply of multichain tokens that allows users know the boundaries of the token.


Scope
---------

A multichain token must be a token on its own on any deployed chain.

A multichain must define a token perimeter.

A multichain token must allow adding / removing chains.

A multichain token must provide addresses and supplies per deployed chain.

No included:

A referential implementation of multichain token could bring its cross chain transfer features (crosschain payments).

A referential implementation of multichain token could bring its own bridging features or coudl rely in external bridges.

A multichain token does not know what accounts belong to the same user in different network. This is a mission for wallets.



State of Arts
----------

Some token standards are created for a single chain

	* ERC-3643 - The Token Standard for RWA Tokenization (Tokeny)

	* ERC-7943: uRWA - Universal Real World Asset Interface (Brikken)

Other providers focused on mutichain tokens:

	* LayerZero, Axelar, Wormhole, Hyperlane have their proprietary multichain tokens.

	* ERC-6358 created Omniverse tokens by cloning the state in all chains.




Specification
-------------







Implementation
----------

	Definitions:

	Interface:

		networks

		addresses

		balances

    function networkkIds() external view returns (uint256);

		// not needed
    function balanceOfX(address account) public view virtual returns (uint256);

    function transferX(address to, uint256 value) external returns (bool);

    function transfeXrFrom(address from, address to, uint256 value) external returns (bool);



Security Considerations
----------






Backwards Compatibility
----------





Copyright
----------



Citation
----------




Run
----------

npm install

npm run build

