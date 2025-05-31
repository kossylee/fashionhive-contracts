#[starknet::contract]
mod FashionHive {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        owner: ContractAddress,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        OwnerUpdated: OwnerUpdated,
    }

    #[derive(Drop, starknet::Event)]
    struct OwnerUpdated {
        previous_owner: ContractAddress,
        new_owner: ContractAddress,
    }

    #[constructor]
    fn constructor(ref self: ContractState, owner: ContractAddress) {
        self.owner.write(owner);
    }

    #[external(v0)]
    fn get_owner(self: @ContractState) -> ContractAddress {
        self.owner.read()
    }

    #[external(v0)]
    fn update_owner(ref self: ContractState, new_owner: ContractAddress) {
        let previous_owner = self.owner.read();
        assert(starknet::get_caller_address() == previous_owner, 'Only owner can update owner');
        self.owner.write(new_owner);
        self.emit(Event::OwnerUpdated(OwnerUpdated { previous_owner, new_owner }));
    }
}
