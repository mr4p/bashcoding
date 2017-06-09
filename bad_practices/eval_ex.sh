#!/bin/bash
{ myCode=$(</dev/stdin); } <<\EOF
ls
EOF

eval "$myCode"

