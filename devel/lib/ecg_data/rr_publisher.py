#!/usr/bin/python3
# -*- coding: utf-8 -*-
# generated from catkin/cmake/template/script.py.in
# creates a relay to a python script source file, acting as that file.
# The purpose is that of a symlink
python_script = '/home/heba/dev_ws/src/ecg_data/scripts/rr_publisher.py'
with open(python_script, 'r') as fh:
    context = {
        '__builtins__': __builtins__,
        '__doc__': None,
        '__file__': python_script,
        '__name__': __name__,
        '__package__': None,
    }
    exec(compile(fh.read(), python_script, 'exec'), context)
