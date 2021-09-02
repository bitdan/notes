```
输入：
["CQueue","appendTail","deleteHead","deleteHead"]
[[],[3],[],[]]
输出：[null,null,3,-1]
```

```
输入：
["CQueue","deleteHead","appendTail","appendTail","deleteHead","deleteHead"]
[[],[],[5],[2],[],[]]
输出：[null,-1,null,null,5,2]
```

```C++
class CQueue {
public:
    stack<int> A, B;
    CQueue() {}
    void appendTail(int value) {
        A.push(value);
    }
    int deleteHead() {
        if(!B.empty()) {
            int tmp = B.top();
            B.pop();
            return tmp;
        }
        if(A.empty()) return -1;
        while(!A.empty()) {
            int tmp = A.top();
            A.pop();
            B.push(tmp);
        }
        int tmp = B.top();
        B.pop();
        return tmp;
    }
};
```

