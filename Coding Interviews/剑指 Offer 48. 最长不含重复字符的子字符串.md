```C++
class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int l=0,res=0;
        for(int i=0;i<s.size();i++){
            for(int j=l;j<i;j++){
                if(s[i]==s[j]){
                    l=j+1;
                    break;
                }
            }
            res=max(res,i-l+1);

        }
        return res;
    }
};
```

