(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4926886861941957018728999173617921769618988037109375p546 {+ 2218872583553839 546 (3.43832e+164)}
; Y = 1.31278493037339050175660304375924170017242431640625p109 {+ 1408658095876708 109 (8.52046e+032)}
; 1.4926886861941957018728999173617921769618988037109375p546 < 1.31278493037339050175660304375924170017242431640625p109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100001 #b0111111000100000110110001000001001010000001100101111)))
(assert (= y (fp #b0 #b10001101100 #b0101000000010010101011000101011010100010101001100100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
