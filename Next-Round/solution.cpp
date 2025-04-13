#include <bits/stdc++.h>
using namespace std;

// Type definitions
typedef long long ll;
typedef long double ld;
typedef pair<int, int> pii;
typedef pair<ll, ll> pll;
typedef vector<int> vi;
typedef vector<ll> vl;
typedef vector<pii> vpii;
typedef vector<pll> vpll;
typedef vector<vi> vvi;
typedef vector<vl> vvl;
typedef unordered_map<int, int> umii;
typedef unordered_map<ll, ll> umll;
typedef unordered_set<int> usi;
typedef unordered_set<ll> usll;

// Macros
#define fastio ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0)
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define sz(x) (int)(x).size()
#define pb push_back
#define mp make_pair
#define F first
#define S second
#define forn(i, n) for(int i = 0; i < n; i++)
#define for1(i, n) for(int i = 1; i <= n; i++)
#define forr(i, n) for(int i = n - 1; i >= 0; i--)
#define fore(i, a, b) for(int i = a; i <= b; i++)

// Constants
const int MOD = 1e9 + 7;
const ll INF = 1e18;
const int N = 2e5 + 5;
const double EPS = 1e-9;
const double PI = acos(-1);

// Utility functions
template <typename T> void print(T t) { cout << t << "\n"; }
template <typename T, typename... Args> void print(T t, Args... args) { cout << t << " "; print(args...); }

template <typename T> void read(T& t) { cin >> t; }
template <typename T, typename... Args> void read(T& t, Args&... args) { cin >> t; read(args...); }

ll gcd(ll a, ll b) { return b ? gcd(b, a % b) : a; }
ll lcm(ll a, ll b) { return a / gcd(a, b) * b; }
ll binpow(ll a, ll b, ll m = MOD) { a %= m; ll res = 1; while (b > 0) { if (b & 1) res = res * a % m; a = a * a % m; b >>= 1; } return res; }

// Solve function
void solve() {

    int c;
    read(c);

    int p;
    read(p);
    int ans=0;
    int arr[c];
    forn(i, c) {
        cin>>arr[i];
    }
    forn(i, c){
        if(arr[i] > p){
            ans++;
        }
    }

    print(ans);

    
}

int main() {
    fastio;
    
       
    int t = 1;
    // cin >> t;  // Uncomment for multiple test cases
    
    while (t--) {
        solve();
    }
    
    return 0;
} 