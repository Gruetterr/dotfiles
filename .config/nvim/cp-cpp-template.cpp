#include "bits/stdc++.h"
using namespace std;
typedef long long ll;

mt19937 rnd(chrono::steady_clock::now().time_since_epoch().count());

void solve() {

}

int32_t main() {
  ios::sync_with_stdio(0);
  cin.tie(0);
  int t;
  cin >> t;

  for (int i = 0; i < t; i++) {
#ifdef ONPC
    cout << "Testcase " << i << ": ";
#endif
    solve();
#ifdef ONPC
    cout << "----------------------------\n";
#endif
  }
#ifdef ONPC
  cout << "\nTime: " << clock() * 1.0 / CLOCKS_PER_SEC << "s\n";
#endif
  return 0;
}
