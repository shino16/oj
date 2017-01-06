#!/bin/bash
set -e  # If not interactive, exit immediately if any untested command fails.
cd $(dirname $0)
[ -e test ] && rm -r test
oj download http://arc035.contest.atcoder.jp/tasks/arc035_a
diff <(md5sum test/sample-*) - <<EOF
8911d4ca8a5462050cd9cad1984a86e7  test/sample-1.in
21da93069c74dfbc3c02999e8f27a712  test/sample-1.out
0bee89b07a248e27c83fc3d5951213c1  test/sample-2.in
19541a2746e08a6b8f5145bdbaa23e45  test/sample-2.out
2f597205eff28f4f3561934953478a3c  test/sample-3.in
21da93069c74dfbc3c02999e8f27a712  test/sample-3.out
2bb6aed5111ef9726bcf6eef982ff32b  test/sample-4.in
21da93069c74dfbc3c02999e8f27a712  test/sample-4.out
EOF