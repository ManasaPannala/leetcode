class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        # sliding window to get the longest substring
        # start by taking max as 0, then as you progress compare with already visited
        # if match update max if greater and go till end

        chs = set()
        max_len = 0
        l = 0
        for r in range(len(s)):
            while s[r] in chs:
                chs.remove(s[l])
                l+=1
            chs.add(s[r])
            max_len = max(max_len, r-l+1)
        return max_len


        