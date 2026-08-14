// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @dev Multichain token perimeter interface
 */
interface IERC20x {

	// ************************************************************************************************
	// ***************************************** Only Master ******************************************
	// ************************************************************************************************
	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChains() external view returns (uint256[] memory);

	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChainAddress(uint256 chainId) external view returns (address);

	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChainSupply(uint256 chainId) external view returns (uint256);

	// ************************************************************************************************
	// ***************************************** All Chains *******************************************
	// ************************************************************************************************
	/**
	 * @dev Emitted when `value` tokens are moved from one account (`from`) to
	 * another (`to`).
	 *
	 * Note that `value` may be zero.
	 */
	// bridge
	event Paid(uint256 toChain, address toAddress, uint256 amount);

	/**
	 * @dev Moves a `value` amount of tokens from the caller's account to `to`.
	 *
	 * Returns a boolean value indicating whether the operation succeeded.
	 *
	 * Emits a {Transfer} event.
	 */

	// bridge
	function pay(uint256 toChain, address toAddress, uint256 amount) external returns (bool);

	/**
	 * @dev Emitted when `value` tokens are moved from one account (`from`) to
	 * another (`to`).
	 *
	 * Note that `value` may be zero.
	 */
	// bridge
	event Bridged(uint256 toChain, address toAddress, uint256 amount);

	/**
	 * @dev Moves a `value` amount of tokens from the caller's account to `to`.
	 *
	 * Returns a boolean value indicating whether the operation succeeded.
	 *
	 * Emits a {Transfer} event.
	 */

	// bridge
	function bridge(uint256 toChain, address toAddress, uint256 amount) external returns (bool);

}