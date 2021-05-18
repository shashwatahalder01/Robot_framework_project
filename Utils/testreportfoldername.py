
import pathlib


path = pathlib.Path(__file__).parent.parent / "counter.txt"

def read_counter():

    f = open(path, 'r+')
    data = int(f.read())