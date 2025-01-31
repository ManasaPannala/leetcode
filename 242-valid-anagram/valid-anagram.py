class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        sh = {}
        th = {}
        for i in s:
            sh[i] = sh.get(i,0)+1
        for i in t:
            th[i] = th.get(i,0)+1
        return th == sh