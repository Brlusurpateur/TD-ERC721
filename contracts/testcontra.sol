pragma solidity ^0.6.0;
import "./IExerciceSolution.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract testcontra is IExerciceSolution, ERC721 {
    constructor(address evaluator1) public ERC721("TestContract", "TOM"){
    //_mint(address(this), 0);
    _mint(evaluator1, 1); // for question 1
    }

    function isBreeder(address account) external override returns (bool){
        return true;
    }

    function registrationPrice() external override returns (uint256){
        return 1;
    }

    function registerMeAsBreeder() external override payable {
    }

    function declareAnimal(uint sex, uint legs, bool wings, string calldata name) external override returns (uint256){
        return 1;
    }

    function getAnimalCharacteristics(uint animalNumber) external override returns (string memory _name, bool _wings, uint _legs, uint _sex){
        return ("test",true,1,1);
    }

    function declareDeadAnimal(uint animalNumber) external override {}

    function tokenOfOwnerByIndex(address owner, uint256 index) public view override (IExerciceSolution,ERC721)returns (uint256){
        return 1;
    }

    function isAnimalForSale(uint animalNumber) external override view returns (bool){
        return true;
    }

    function animalPrice(uint animalNumber) external override view returns (uint256){
    return 1;
    }

    function buyAnimal(uint animalNumber) external override payable{}

    function offerForSale(uint animalNumber, uint price) external override{}

    // Reproduction functions

    function declareAnimalWithParents(uint sex, uint legs, bool wings, string calldata name, uint parent1, uint parent2) external override returns (uint256){
        return 1;
    }

    function getParents(uint animalNumber) external override returns (uint256, uint256){
        return (1,1);
    }

    function canReproduce(uint animalNumber) external override returns (bool){
        return true;
    }

    function reproductionPrice(uint animalNumber) external override view returns (uint256){
        return 1;
    }

    function offerForReproduction(uint animalNumber, uint priceOfReproduction) external override returns (uint256){
        return 1;
    }

    function authorizedBreederToReproduce(uint animalNumber) external override returns (address){
        return address(0);
    }

    function payForReproduction(uint animalNumber) external override payable{}

}