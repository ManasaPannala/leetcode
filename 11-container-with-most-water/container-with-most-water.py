class Solution:
    def maxArea(self, height: List[int]) -> int:
        #sliding window
        #put max as 0 and as you through all update accordingly

        pro = 0
        l, r = 0, len(height)-1
        while l<r:
            area = (r-l)*min(height[r], height[l])
            pro = max(pro, area)
            if height[l] <= height[r]:
                l+=1
            else:
                r-=1
        return pro




        