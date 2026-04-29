(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.383897045621470756060489293304271996021270751953125 829 {- 1728918591609490 829 (-4.95416e+249)}
; -1.383897045621470756060489293304271996021270751953125 829 I == -1.383897045621470756060489293304271996021270751953125 829
; [HW: -1.383897045621470756060489293304271996021270751953125 829] 

; mpf : - 1728918591609490 829
; mpfd: - 1728918591609490 829 (-4.95416e+249) class: Neg. norm. non-zero
; hwf : - 1728918591609490 829 (-4.95416e+249) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111100 #b0110001001000111000100111010011111111001101010010010)))
(assert (= r (fp #b1 #b11100111100 #b0110001001000111000100111010011111111001101010010010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
