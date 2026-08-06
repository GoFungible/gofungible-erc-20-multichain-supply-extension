// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @dev Cross networks supply interface
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
    event TransferX(uint32 toChain, address toAddress, uint256 amount);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferX(uint32 toChain, address toAddress, uint256 amount) external returns (bool);


}