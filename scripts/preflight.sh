#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
ruby -c Casks/notchagent.rb
ruby -c scripts/check_comments.rb
ruby scripts/test_check_comments.rb
ruby scripts/check_comments.rb
