(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.866389946938173505230906812357716262340545654296875p912 {+ 3901873442188302 912 (6.46187e+274)}
; Y = -1.85250751767843535589008752140216529369354248046875p-390 {- 3839352538947148 -390 (-7.34618e-118)}
; 1.866389946938173505230906812357716262340545654296875p912 > -1.85250751767843535589008752140216529369354248046875p-390 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001111 #b1101110111001011101110110100011110101110110000001110)))
(assert (= y (fp #b1 #b01001111001 #b1101101000111101111011101100010000000101111001001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
