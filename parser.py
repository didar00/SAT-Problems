from os import path
import io

with open("3SAT_1_CSP.solution", "r") as f:
    whole_str = f.read()
    p = whole_str.split("}")
    for s in p:
        print(s)
