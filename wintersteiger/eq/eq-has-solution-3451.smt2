(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.745521586857843754359009835752658545970916748046875p-385 {+ 3357530740769646 -385 (2.21502e-116)}
; Y = -1.7756673207142077419717907105223275721073150634765625p-850 {- 3493295056531977 -850 (-2.36519e-256)}
; 1.745521586857843754359009835752658545970916748046875p-385 = -1.7756673207142077419717907105223275721073150634765625p-850 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111110 #b1011111011011010100000001011001000000100001101101110)))
(assert (= y (fp #b1 #b00010101101 #b1100011010010010001000100010111100001011001000001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
