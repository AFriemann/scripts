alias hours="awk -F',' 'OFS=\",\" { \$4 = ((\$3 * 60 - \$2 * 60) + (substr(\$3, 4) - substr(\$2, 4))) / 60 } 1'"
alias total_hours="hours | awk -F',' '{ print \$4 }' | paste -sd+ - | bc"
