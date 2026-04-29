(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.896168123257688353788807944511063396930694580078125p172 {- 4035982425964642 172 (-1.13511e+052)}
; +zero < -1.896168123257688353788807944511063396930694580078125p172 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10010101011 #b1110010101101011010001100010110100011100000001100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
