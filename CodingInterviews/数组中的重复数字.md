/*
输入：
[2, 3, 1, 0, 2, 5, 3]
输出：2 或 3 
*/

```C++

class Solution {
public:
    int findRepeatNumber(vector<int>& nums) {
        unordered_map<int, bool> map;
        for(int num : nums) {
            if(map[num]) return num;
            map[num] = true;
        }
        return -1;
    }
};

```

