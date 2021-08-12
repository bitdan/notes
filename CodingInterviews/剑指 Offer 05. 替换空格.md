```
输入：s = "We are happy."
输出："We%20are%20happy."
```

```C++
class Solution {
public:
    string replaceSpace(string s) {
        string res;
        for(int i=0;i<s.size();i++){
            if(s[i] != ' ')  res+=s[i];
            if(s[i] == ' ')  res+="%20";

        }
        return res;
    }
};
```

