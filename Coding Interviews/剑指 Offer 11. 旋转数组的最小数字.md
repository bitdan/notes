/*
输入：[3,4,5,1,2]
输出：1

*/

```C++

class Solution {
public:
    int minArray(vector<int>& numbers) {
        int i=0,j=numbers.size()-1;
        while(i<j){
            int m=(i+j)>>1;
            if(numbers[m]>numbers[j]) i=m+1;
            else if(numbers[m]<numbers[j]) j=m;
            else j--;
        }
        return numbers[i];
    }
};
```

