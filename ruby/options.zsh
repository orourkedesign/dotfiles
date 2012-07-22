# Ruby GC tuning
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

export IRBRC="$HOME/.irbrc"

export GEM_EDITOR="$GIT_EDITOR"

# Disable all Guard notifications
export GUARD_NOTIFY='false'
