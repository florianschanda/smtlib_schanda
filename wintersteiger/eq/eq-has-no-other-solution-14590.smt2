(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.510070296033793280088275423622690141201019287109375p321 {+ 2297152395150550 321 (6.45098e+096)}
; Y = 1.009131399379032956176160951144993305206298828125p-802 {+ 41124166840784 -802 (3.78348e-242)}
; 1.510070296033793280088275423622690141201019287109375p321 = 1.009131399379032956176160951144993305206298828125p-802 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000000 #b1000001010010011111101111000100000100000010011010110)))
(assert (= y (fp #b0 #b00011011101 #b0000001001010110011011110111010110110011000111010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
