#[cfg(test)]
mod tests {
    use core::traits::TryInto;
    use starknet::ContractAddress;
    use starknet::class_hash::Felt252TryIntoClassHash;
    use fashionhive_contracts::fashion_hive::FashionHive;

    #[test]
    fn test_owner() {
        // Setup
        let owner: ContractAddress = 0x123.try_into().unwrap();
        let mut state = FashionHive::contract_state_for_testing();
        
        // Call constructor
        FashionHive::constructor(ref state, owner);
        
        // Verify owner was set correctly
        let stored_owner = FashionHive::get_owner(@state);
        assert(stored_owner == owner, 'Owner not set correctly');
    }
}
