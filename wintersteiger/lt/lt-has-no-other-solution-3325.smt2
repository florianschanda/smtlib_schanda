(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2745431423937454429307081227307207882404327392578125p-775 {+ 1236432393781597 -775 (6.41369e-234)}
; Y = -1.472741728933687266334118248778395354747772216796875p276 {- 2129039474268238 276 (-1.78816e+083)}
; 1.2745431423937454429307081227307207882404327392578125p-775 < -1.472741728933687266334118248778395354747772216796875p276 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111000 #b0100011001001000011101011001100111101100000101011101)))
(assert (= y (fp #b1 #b10100010011 #b0111100100000101100110100001100100111001100001001110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
