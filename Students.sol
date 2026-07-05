// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Students {
   struct Data {
      uint8 id ;
      string name ;
      uint8 age;
      uint8 marks;
      bool ispassed;
      bool exists ;
      }

      mapping (uint=>Data) Userdata;
    
      function addStudent(uint8 id ,string memory name ,uint8 age ,uint8 marks) 
      public  {
         require(Userdata[id].exists == false, "student already exists");
           bool isPassed ;
        if (marks >= 33 ){ 
         isPassed = true ;
         }
         else {
            isPassed = false ;
         }
        Userdata[id] = Data({
             id: id,
              name: name,
             age: age,
             marks: marks,
             ispassed: isPassed,
             exists: true
                   });}
  
      function getStudent(uint id) public view returns (Data memory) {
         require(Userdata[id].exists, "student not found");
         return Userdata[id];
         }

         }
    