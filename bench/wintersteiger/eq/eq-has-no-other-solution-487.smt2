(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.317268902543361708268321308423765003681182861328125p757 {+ 1428852111270530 757 (9.98576e+227)}
; Y = 1.6664661286472883805487299468950368463993072509765625p-276 {+ 3001496608630985 -276 (1.37252e-083)}
; 1.317268902543361708268321308423765003681182861328125p757 = 1.6664661286472883805487299468950368463993072509765625p-276 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011110100 #b0101000100111000100010001110100001110110001010000010)))
(assert (= y (fp #b0 #b01011101011 #b1010101010011101100001100011001001101110100011001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
