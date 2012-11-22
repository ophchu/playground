#!/bin/sh
ls  -l /home/ophirc  | awk '{print $1, $9;}'