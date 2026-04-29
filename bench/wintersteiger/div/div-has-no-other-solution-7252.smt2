(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.811916389420571871227139126858673989772796630859375p-915 {+ 3656546348850486 -915 (6.54172e-276)}
; Y = 1.6155546698115823556207715228083543479442596435546875p787 {+ 2772211781589611 787 (1.31501e+237)}
; 1.811916389420571871227139126858673989772796630859375p-915 / 1.6155546698115823556207715228083543479442596435546875p787 == +zero
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
(assert (= x (fp #b0 #b00001101100 #b1100111111011001110000001010001110100101110100110110)))
(assert (= y (fp #b0 #b11100010010 #b1001110110010100111111011010011110111101101001101011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
