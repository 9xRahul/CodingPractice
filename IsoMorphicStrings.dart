class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, String> mapST = {};
    Map<String, String> mapTS = {};

    for (int i = 0; i < s.length; i++) {
      String a = s[i];
      String b = t[i];

      if (mapST.containsKey(a) && mapST[a] != b) return false;
      if (mapTS.containsKey(b) && mapTS[b] != a) return false;

      mapST[a] = b;
      mapTS[b] = a;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isIsomorphic("add", "egg")); // ✅ true
  print(sol.isIsomorphic("foo", "bar")); // false
  print(sol.isIsomorphic("paper", "title")); // ✅ true
}
