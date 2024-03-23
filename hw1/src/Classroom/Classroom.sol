// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 internal time = 0;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
    if(time==0){
        time++;
        return(1500);}
    else{
        return(123);}
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {

    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        address classaddr = address(msg.sender);
        IClassroomV2 classroom = IClassroomV2(classaddr);
        
        if(classroom.isEnrolled()==false){
            return(1500);
        }
        else if(classroom.isEnrolled()==true)
        {
            return(123);
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()>7000){
            return(1500);
        }
        else{
            return(123);
        }
    }
}
