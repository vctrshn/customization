#!/usr/bin/python
import sys
arg = sys.argv[1] if len(sys.argv) >= 2 else raw_input()
with open('/Users/ethomas/nova-list', 'r') as f:
    print(next((line for line in f.readlines() if arg in line), None))
