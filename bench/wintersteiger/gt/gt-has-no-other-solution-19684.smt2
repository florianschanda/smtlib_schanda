(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.56491320145337819980113636120222508907318115234375p-157 {+ 2544142883562108 -157 (8.56606e-048)}
; Y = 1.962318495277901586604230033117346465587615966796875p415 {+ 4333897216745294 415 (1.66042e+125)}
; 1.56491320145337819980113636120222508907318115234375p-157 > 1.962318495277901586604230033117346465587615966796875p415 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100010 #b1001000010011110001001101100110101010010001001111100)))
(assert (= y (fp #b0 #b10110011110 #b1111011001011010100000010100000110001101111101001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
