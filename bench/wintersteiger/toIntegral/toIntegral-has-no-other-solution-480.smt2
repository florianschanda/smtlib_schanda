(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4935031436908434709920356908696703612804412841796875 115 {- 2222540574032251 115 (-6.20377e+034)}
; -1.4935031436908434709920356908696703612804412841796875 115 I == -1.4935031436908434709920356908696703612804412841796875 115
; [HW: -1.4935031436908434709920356908696703612804412841796875 115] 

; mpf : - 2222540574032251 115
; mpfd: - 2222540574032251 115 (-6.20377e+034) class: Neg. norm. non-zero
; hwf : - 2222540574032251 115 (-6.20377e+034) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110010 #b0111111001010110001110001101011010100000000101111011)))
(assert (= r (fp #b1 #b10001110010 #b0111111001010110001110001101011010100000000101111011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
