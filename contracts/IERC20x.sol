// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20x {




		event MasterChainUpdated(uint256 fromMasterChain, uint256 toMasterChain);

		function getMasterChain() external view returns (uint256);

		function setMasterChain(uint256 masterChain_) external;



	
    /**
     * @dev Returns the value of tokens in existence.
     */
    function globalSupply() external view returns (uint256);



    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event TransferX(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferX(uint256 toChain, address toAddress, uint256 amount) external returns (bool);


}