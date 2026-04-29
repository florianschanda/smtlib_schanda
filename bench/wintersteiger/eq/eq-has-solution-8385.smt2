(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7173656372396963742943398756324313580989837646484375p103 {- 3230727616561095 103 (-1.74162e+031)}
; Y = 1.5249500372117257285253799636848270893096923828125p-436 {+ 2364164791974856 -436 (8.59365e-132)}
; -1.7173656372396963742943398756324313580989837646484375p103 = 1.5249500372117257285253799636848270893096923828125p-436 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001100110 #b1011011110100101010001100011111100110111111111000111)))
(assert (= y (fp #b0 #b01001001011 #b1000011001100011001000000010100111011011101111001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
