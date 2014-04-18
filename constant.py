#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

UPDATE_DATE = ""

path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "data/origin_data_time")
with open(path) as fp:
    UPDATE_DATE = fp.read()
