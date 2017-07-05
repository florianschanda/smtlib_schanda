(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.618639784198779185686589698889292776584625244140625p-299 {+ 2786105901594186 -299 (1.58921e-090)}
; Y = 1.882090826531624738748860181658528745174407958984375p-197 {+ 3972583917674758 -197 (9.36982e-060)}
; 1.618639784198779185686589698889292776584625244140625p-299 + 1.882090826531624738748860181658528745174407958984375p-197 == 1.882090826531624738748860181658528745174407958984375p-197
; [HW: 1.882090826531624738748860181658528745174407958984375p-197] 

; mpf : + 3972583917674758 -197
; mpfd: + 3972583917674758 -197 (9.36982e-060) class: Pos. norm. non-zero
; hwf : + 3972583917674758 -197 (9.36982e-060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010100 #b1001111001011111001011010100100100100011011001001010)))
(assert (= y (fp #b0 #b01100111010 #b1110000111010000101101000101010000001110000100000110)))
(assert (= r (fp #b0 #b01100111010 #b1110000111010000101101000101010000001110000100000110)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
