(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7601947933601447271456663656863383948802947998046875p93 {+ 3423612988105739 93 (1.74321e+028)}
; Y = 1.092417379058214788045688692363910377025604248046875p804 {+ 416210873889134 804 (1.16548e+242)}
; 1.7601947933601447271456663656863383948802947998046875p93 < 1.092417379058214788045688692363910377025604248046875p804 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011100 #b1100001010011100001000000100000000010010010000001011)))
(assert (= y (fp #b0 #b11100100011 #b0001011110101000101010100101010010100011000101101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
