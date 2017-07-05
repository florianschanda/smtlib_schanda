(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.4773003797513675205976824145182035863399505615234375p639 {- 2149569812392055 639 (-3.37005e+192)}
; -zero % -1.4773003797513675205976824145182035863399505615234375p639 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11001111110 #b0111101000110000010110111001000101100110100001110111)))
(assert (= r (_ -zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
