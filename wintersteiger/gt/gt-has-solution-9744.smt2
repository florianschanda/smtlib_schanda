(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8467875294362550153692836829577572643756866455078125p1013 {+ 3813592002031101 1013 (1.62107e+305)}
; Y = 1.3854681339728767142105425591580569744110107421875p417 {+ 1735994144523448 417 (4.68926e+125)}
; 1.8467875294362550153692836829577572643756866455078125p1013 > 1.3854681339728767142105425591580569744110107421875p417 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110100 #b1101100011000111000100010100100110010110110111111101)))
(assert (= y (fp #b0 #b10110100000 #b0110001010101110000010100010010100010000010010111000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
