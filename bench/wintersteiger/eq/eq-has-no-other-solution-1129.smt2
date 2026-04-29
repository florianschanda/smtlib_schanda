(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8326770134382410759599224547855556011199951171875p-564 {- 3750043887440440 -564 (-3.03507e-170)}
; Y = -1.7406133225512885331909274100326001644134521484375p358 {- 3335425883467608 358 (-1.02198e+108)}
; -1.8326770134382410759599224547855556011199951171875p-564 = -1.7406133225512885331909274100326001644134521484375p358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111001011 #b1101010100101010010100100001110011011001001000111000)))
(assert (= y (fp #b1 #b10101100101 #b1011110110011000110101011010111101010110111101011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
