(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0679675801452537253766195135540328919887542724609375p-5 {- 306098768615439 -5 (-0.033374)}
; Y = 1.099152840231511607527181695331819355487823486328125p951 {+ 446544694319362 951 (2.09211e+286)}
; -1.0679675801452537253766195135540328919887542724609375p-5 = 1.099152840231511607527181695331819355487823486328125p951 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111010 #b0001000101100110010100101100010111101001100000001111)))
(assert (= y (fp #b0 #b11110110110 #b0001100101100010000101001001111000011001100100000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
