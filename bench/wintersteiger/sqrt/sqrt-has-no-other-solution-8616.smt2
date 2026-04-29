(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.470868510543799967393852057284675538539886474609375p-188 {+ 2120603248625558 -188 (3.74917e-057)}
; 1.470868510543799967393852057284675538539886474609375p-188 S == 1.2127936801219736384638281379011459648609161376953125p-94
; [HW: 1.2127936801219736384638281379011459648609161376953125p-94] 

; mpf : + 958337538504117 -94
; mpfd: + 958337538504117 -94 (6.12304e-029) class: Pos. norm. non-zero
; hwf : + 958337538504117 -94 (6.12304e-029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000011 #b0111100010001010110101101011010110000000011110010110)))
(assert (= r (fp #b0 #b01110100001 #b0011011001111001101001011000100011101011010110110101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
