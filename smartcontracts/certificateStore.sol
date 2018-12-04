pragma solidity >=0.4.22 <0.6.0;

contract certificateStore {
    mapping (bytes32 => uint) public hashStore;

    function saveHash(bytes32 hash) public returns (bool) {
        if (hashStore[hash] != 0x0) {
            revert('This hash is already stored!');
        }

        hashStore[hash] = now;
        return true;
    }
}