/*
输入：root = [4,2,7,1,3,6,9]
输出：[4,7,2,9,6,3,1]
*/

```C++

class Solution {
public:
    TreeNode* mirrorTree(TreeNode* root) {
        stack<TreeNode*> stk;
        if(root)
            stk.push(root);
        while(!stk.empty()){
            TreeNode* node=stk.top();
            stk.pop();
            if(node->left)
                stk.push(node->left);

            if(node->right)
                stk.push(node->right);
            swap(node->left,node->right);

        }
        return root;
    }
};
```

