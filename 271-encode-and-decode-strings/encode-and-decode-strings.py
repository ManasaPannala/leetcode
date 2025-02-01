class Codec:
    def encode(self, strs: List[str]) -> str:
        """Encodes a list of strings to a single string.
        """ 
        #4#hello5#world

        res = ""
        for s in strs:
            res += str(len(s))+'#'+s
        return res
        

    def decode(self, s: str) -> List[str]:
        """Decodes a single string to a list of strings.
        """
        #4#hello5#world
        res = []
        i=0
        while i<len(s):
            j = i
            while s[j] != '#':
                j+=1
            l = int(s[i:j])
            res.append(s[j+1:j+1+l])
            i=j+1+l
        return res

        


# Your Codec object will be instantiated and called as such:
# codec = Codec()
# codec.decode(codec.encode(strs))