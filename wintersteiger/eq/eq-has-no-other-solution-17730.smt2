(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.041908883152257825344122466049157083034515380859375p-62 {+ 188740830548022 -62 (2.25928e-019)}
; Y = -1.65423693403798122147918547852896153926849365234375p597 {- 2946421212345468 597 (-8.58035e+179)}
; 1.041908883152257825344122466049157083034515380859375p-62 = -1.65423693403798122147918547852896153926849365234375p597 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111000001 #b0000101010111010100010100110001010001101000000110110)))
(assert (= y (fp #b1 #b11001010100 #b1010011101111100000100100101101110000111010001111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
