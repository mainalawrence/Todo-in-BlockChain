pragma solidity >=0.4.22 <0.9.0;


contract TodoList{
    constructor() public {
       SetTask("Clean the dog"); 
    }
    uint public taskCount=0;
    struct Task{
        uint id;
        string content;
        bool complete;
    }

    mapping(uint=>Task)public tasks;

    function SetTask(string memory _task)public{
       taskCount ++;
       tasks[taskCount] =Task(taskCount,_task,false);
    }
    function deleteTask(uint memory id){
        
    }
}