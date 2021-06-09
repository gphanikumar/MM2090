#!/bin/bash

echo "Enter your date of your birth (as yyyy-mm-dd), buddy: ";
read user_yyyy_mm_dd;

echo `date +%a -d $user_yyyy_mm_dd`;
