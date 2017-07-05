(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8156875416936555378555340212187729775905609130859375p660 {- 3673530108822303 660 (-8.68637e+198)}
; Y = -1.2261047727203064905410201390623115003108978271484375p991 {- 1018285370169863 991 (-2.56598e+298)}
; -1.8156875416936555378555340212187729775905609130859375p660 = -1.2261047727203064905410201390623115003108978271484375p991 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010010011 #b1101000011010000111001100001001101010100001100011111)))
(assert (= y (fp #b1 #b11111011110 #b0011100111100010000000001001110001001101101000000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
