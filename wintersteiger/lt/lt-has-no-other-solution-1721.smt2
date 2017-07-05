(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7921599739496849590381089001311920583248138427734375p831 {+ 3567571363497623 831 (2.56627e+250)}
; Y = 1.3470416073596405137635656501515768468379974365234375p637 {+ 1562936453586935 637 (7.68225e+191)}
; 1.7921599739496849590381089001311920583248138427734375p831 < 1.3470416073596405137635656501515768468379974365234375p637 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100111110 #b1100101011001010111111101111110101010000011010010111)))
(assert (= y (fp #b0 #b11001111100 #b0101100011010111101110000000000111110101111111110111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
