(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.702457792710799555635503566008992493152618408203125p955 {+ 3163588653495858 955 (5.18468e+287)}
; Y = -1.740364978864917144818491578917019069194793701171875p887 {- 3334307442934206 887 (-1.79575e+267)}
; 1.702457792710799555635503566008992493152618408203125p955 < -1.740364978864917144818491578917019069194793701171875p887 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111010 #b1011001111010100010001100001111010000011011000110010)))
(assert (= y (fp #b1 #b11101110110 #b1011110110001000100011110010101101010100000110111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
