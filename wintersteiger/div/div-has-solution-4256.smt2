(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3978216267627818769625491768238134682178497314453125p863 {- 1791629330048789 863 (-8.59682e+259)}
; Y = -1.126975061037696068666491555632092058658599853515625p160 {- 571844837574714 160 (-1.64708e+048)}
; -1.3978216267627818769625491768238134682178497314453125p863 / -1.126975061037696068666491555632092058658599853515625p160 == 1.2403305761493033099185367973404936492443084716796875p703
; [HW: 1.2403305761493033099185367973404936492443084716796875p703] 

; mpf : + 1082352693191739 703
; mpfd: + 1082352693191739 703 (5.21945e+211) class: Pos. norm. non-zero
; hwf : + 1082352693191739 703 (5.21945e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011110 #b0110010111010111101000110101110010010110011100010101)))
(assert (= y (fp #b1 #b10010011111 #b0010000010000001011100000000011010010000100000111010)))
(assert (= r (fp #b0 #b11010111110 #b0011110110000110010011011111110011001010010000111011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
