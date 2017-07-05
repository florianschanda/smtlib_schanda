(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.03964613356589641313121319399215281009674072265625p138 {+ 178550312354052 138 (3.62264e+041)}
; Y = 1.6843079200147041962765115385991521179676055908203125p1019 {+ 3081848893584901 1019 (9.46209e+306)}
; 1.03964613356589641313121319399215281009674072265625p138 < 1.6843079200147041962765115385991521179676055908203125p1019 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001001 #b0000101000100110001111111011111100010100000100000100)))
(assert (= y (fp #b0 #b11111111010 #b1010111100101110110011011100100011011011011000000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
