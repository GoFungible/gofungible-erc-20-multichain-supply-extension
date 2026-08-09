// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @dev Cross networks supply interface
 */
interface IERC20x {



	/**
	 * @dev Returns the value of tokens in existence.
	 */
	function globalSupply() external view returns (uint256);






	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChains() external view returns (uint256[] memory);

	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChainAddress(uint256 chainId) external view returns (address);





	event MasterChainUpdated(uint256 fromMasterChain, uint256 toMasterChain);

	function getMasterChain() external view returns (uint256);

	function setMasterChain(uint256 masterChain_) external;





	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChainSupplies() external view returns (uint256[] memory _supplies);

	/**
	 * @dev provide the list of deployed chains for this multichain token
	 */
	function getChainSupply(uint256 chainId) external view returns (uint256);





	/**
	 * @dev Emitted when `value` tokens are moved from one account (`from`) to
	 * another (`to`).
	 *
	 * Note that `value` may be zero.
	 */
	event TransferX(uint256 toChain, address toAddress, uint256 amount);

	/**
	 * @dev Moves a `value` amount of tokens from the caller's account to `to`.
	 *
	 * Returns a boolean value indicating whether the operation succeeded.
	 *
	 * Emits a {Transfer} event.
	 */
	function transferX(uint256 toChain, address toAddress, uint256 amount) external returns (bool);


}