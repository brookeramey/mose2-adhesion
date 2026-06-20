# MoSe2 Adhesion Engineering

First-principles cleavage energy for 2H-MoSe2.
Part of the universal vdW adhesion framework (Ramey 2026).

## Motivation
Completes the clean 2x2 Mo-vs-W TMD matrix for Se, matching the 
existing Mo-vs-W comparison for S (MoS2/WS2). Critical for 
resolving whether lambda's metal-dependence is a true row effect 
(4d vs 5d) or was confounded by using Nb (group 5) instead of Mo 
(group 6) as the Se-side 4d reference in earlier comparisons.

## Status
- Relaxation: complete (d0 = 6.5048 A, largest of all 5 materials)
- Cleavage scan: running, serial-only execution (post race-condition 
  policy change)
- GSFE, Test 3: planned

## Key parameters
- a = 3.27 A, c = 12.92 A
- Se-Mo-Se thickness = 3.4457 A
- vdW gap = 3.0566 A
- Pseudopotentials: Mo.pbe-spn-kjpaw_psl.1.0.0.UPF, 
  Se.pbe-dn-kjpaw_psl.1.0.0.UPF (PAW, PSLibrary 1.0.0)
