(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.713840502208975546949432100518606603145599365234375p-911 {- 3214851819750310 -911 (-9.90021e-275)}
; Y = 1.4500231431571493079246693014283664524555206298828125p-900 {+ 2026724059830637 -900 (1.71545e-271)}
; -1.713840502208975546949432100518606603145599365234375p-911 < 1.4500231431571493079246693014283664524555206298828125p-900 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110000 #b1011011010111110010000000100101110001100001110100110)))
(assert (= y (fp #b0 #b00001111011 #b0111001100110100101101110111101001001101100101101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
