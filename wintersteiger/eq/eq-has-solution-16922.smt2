(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1036176461739362064662373086321167647838592529296875p86 {- 466652392697947 86 (-8.53883e+025)}
; Y = -1.8073946312139266279217508781584911048412322998046875p434 {- 3636182160275979 434 (-8.01809e+130)}
; -1.1036176461739362064662373086321167647838592529296875p86 = -1.8073946312139266279217508781584911048412322998046875p434 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010101 #b0001101010000110101011111010000110011011000001011011)))
(assert (= y (fp #b1 #b10110110001 #b1100111010110001011010100010000000000111101000001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
