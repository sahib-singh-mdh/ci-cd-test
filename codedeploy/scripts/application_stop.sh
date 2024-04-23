#!/bin/bash

echo 'stopping application'

isExistApp=`pgrep httpd`
if [[ -n  $isExistApp ]]; then
    service httpd stop        
fi