var node = argument0;

//Completes Node and unlocked connecting nodes
for(var i = 0; i < array_length_1d(node.nodeConnections); i++)
{
    node.nodeConnections[i].isLocked = false;
    node.hasCompleted = true;
}
