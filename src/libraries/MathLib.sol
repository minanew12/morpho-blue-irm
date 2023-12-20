// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {WAD} from "../../lib/morpho-blue/src/libraries/MathLib.sol";

int256 constant WAD_INT = int256(WAD);

/// @title MathLib
/// @author Morpho Labs
/// @custom:contact security@morpho.org
/// @notice Library to manage fixed-point arithmetic on signed integers.
library MathLib {
    /// @dev Returns the multiplication of `a` by `b` (in WAD) rounded towards 0.
    function wMulToZero(int256 a, int256 b) internal pure returns (int256) {
        return a * b / WAD_INT;
    }

    /// @dev Returns the division of `a` by `b` (in WAD) rounded towards 0.
    function wDivToZero(int256 a, int256 b) internal pure returns (int256) {
        return a * WAD_INT / b;
    }
}
