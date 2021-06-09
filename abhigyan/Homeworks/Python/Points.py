#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 31 17:06:30 2019

@author: abhigyan
"""
class Point:
    def __init__(self, lst):
        self._lst=lst
    
    def __getitem__(self, item):
        return self._lst[item]
    
    def __add__(self, another):
        return Point([self[0]+another[0],self[1]+another[1]])
    
    def __truediv__(self, number):
        return Point([self[0]/number,self[1]/number])
    
    def __mul__(self, number):
        return Point([self[0]*number,self[1]*number])
    
    def __sub__(self, another):
        return Point([self[0]-another[0],self[1]-another[1]])
    
    def __str__(self):
        return "["+str(self[0])+","+str(self[1])+"]"