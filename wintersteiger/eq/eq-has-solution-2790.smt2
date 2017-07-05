(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.82203464349661370391686432412825524806976318359375p746 {- 3702114914136988 746 (-6.74425e+224)}
; Y = 1.3551887529164672319126339061767794191837310791015625p213 {+ 1599627935280793 213 (1.78398e+064)}
; -1.82203464349661370391686432412825524806976318359375p746 = 1.3551887529164672319126339061767794191837310791015625p213 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011101001 #b1101001001110000110111001100010111111111001110011100)))
(assert (= y (fp #b0 #b10011010100 #b0101101011101101101001100110110110101110111010011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
