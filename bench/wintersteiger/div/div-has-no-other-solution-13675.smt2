(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.79622414200093061253937776200473308563232421875p-575 {+ 3585874749218784 -575 (1.45249e-173)}
; Y = 1.3800653287159303506115293203038163483142852783203125p606 {+ 1711662072781509 606 (3.66503e+182)}
; 1.79622414200093061253937776200473308563232421875p-575 / 1.3800653287159303506115293203038163483142852783203125p606 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000000 #b1100101111010101010110000110101000101101111111100000)))
(assert (= y (fp #b0 #b11001011101 #b0110000101001011111101100001110100101101101011000101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
