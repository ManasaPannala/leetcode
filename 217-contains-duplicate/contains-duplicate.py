class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        #return true if duplicate numbers present
        # can use hash map to record nums
        hm =set()
        for i,a in enumerate(nums):
            if a in hm:
                return True
            else:
                hm.add(a)
        return False