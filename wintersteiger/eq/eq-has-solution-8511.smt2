(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.152088490351063310157542218803428113460540771484375p-788 {+ 684945668472390 -788 (7.077e-238)}
; Y = -1.32174521235084174719531802111305296421051025390625p138 {- 1449011618451492 138 (-4.60561e+041)}
; 1.152088490351063310157542218803428113460540771484375p-788 = -1.32174521235084174719531802111305296421051025390625p138 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011101011 #b0010011011101111010001010111010000100111111001000110)))
(assert (= y (fp #b1 #b10010001001 #b0101001001011101111001001110110010110001000000100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
