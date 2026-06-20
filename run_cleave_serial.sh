#!/bin/bash
PW=/home/brooke/qe/q-e-qe-7.5/bin/pw.x
MPIRUN=/home/brooke/mpich-ch3/bin/mpirun
NP=24
mkdir -p outputs/cleave

inputs=(inputs/cleave/cleave_*.in)
total=${#inputs[@]}

for idx in "${!inputs[@]}"; do
    f="${inputs[$idx]}"
    base=$(basename $f .in)
    out="outputs/cleave/${base}.out"
    num=$((idx+1))
    mkdir -p tmp/cleave_${idx}

    if [ -f "$out" ] && grep -q "JOB DONE" "$out"; then
        echo "  [${num}/${total}] ${base} ... already done"
        continue
    fi

    echo "  [${num}/${total}] ${base} ... starting (np=$NP, serial)"
    $MPIRUN -np $NP $PW < $f > $out 2>&1

    if grep -q "JOB DONE" "$out"; then
        echo "  [${num}/${total}] ${base} ... DONE"
    else
        echo "  [${num}/${total}] ${base} ... FAILED"
    fi
done
echo "MoSe2 cleavage scan (serial) complete"
