(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9987364428493650247986579415737651288509368896484375p547 {+ 4497909071857735 547 (9.20795e+164)}
; Y = -1.1675035858557178958250233336002565920352935791015625p-12 {- 754369086843033 -12 (-0.000285035)}
; 1.9987364428493650247986579415737651288509368896484375p547 < -1.1675035858557178958250233336002565920352935791015625p-12 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100010 #b1111111110101101001100010000011101011100100001000111)))
(assert (= y (fp #b1 #b01111110011 #b0010101011100001100000111101011100110110100010011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
