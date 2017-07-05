(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3620846831824418021739120376878418028354644775390625p-414 {+ 1630684444257009 -414 (3.21948e-125)}
; Y = 1.33617921603302836075499726575799286365509033203125p952 {+ 1514016592056052 952 (5.08652e+286)}
; 1.3620846831824418021739120376878418028354644775390625p-414 = 1.33617921603302836075499726575799286365509033203125p952 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100001 #b0101110010110001100101001111000010100110101011110001)))
(assert (= y (fp #b0 #b11110110111 #b0101011000001111110101110101001001110100111011110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
