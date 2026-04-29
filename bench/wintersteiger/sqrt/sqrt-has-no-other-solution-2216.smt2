(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.774348029742106813699820122565142810344696044921875p-31 {+ 3487353498201630 -31 (8.26245e-010)}
; 1.774348029742106813699820122565142810344696044921875p-31 S == 1.88379830647662860343416468822397291660308837890625p-16
; [HW: 1.88379830647662860343416468822397291660308837890625p-16] 

; mpf : + 3980273723718820 -16
; mpfd: + 3980273723718820 -16 (2.87445e-005) class: Pos. norm. non-zero
; hwf : + 3980273723718820 -16 (2.87445e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111100000 #b1100011000111011101011000010011101110110111000011110)))
(assert (= r (fp #b0 #b01111101111 #b1110001001000000100110110001011010010011110010100100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
