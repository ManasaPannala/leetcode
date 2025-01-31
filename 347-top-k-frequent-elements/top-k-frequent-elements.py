class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
            #create a hashmap to store frequency with the numbers having it
            # put them into an array based on frequency
            count = {}
            freq = [[] for i in range(len(nums)+1)]
            for i in nums:
                count[i] = count.get(i,0)+1
            for i,n in count.items():
                freq[n].append(i)
            
            res = []
            for i in range(len(freq)-1, 0, -1):
                for n in freq[i]:
                    res.append(n)
                    if len(res)==k:
                        return res