给定一个整数 n，计算所有小于等于 n 的非负整数中数字 1 出现的个数。

 

示例 1：

```
输入：n = 13
输出：6
示例 2：
```

```
输入：n = 0
输出：0
```

```C++
class Solution {
public:
    int countDigitOne(int n) {
        long num=n,i=1,s=0;

        while(num){         
            if(num%10==0)
                s=s+(num/10)*i;
            
            if(num%10==1) 
                s=s+(num/10)*i+(n%i)+1;
            
            if(num%10>1) 
                s=s+ceil(num/10.0)*i;
            
            num=num/10;
            i=i*10;
        }    
        return s;
    }
};
```

