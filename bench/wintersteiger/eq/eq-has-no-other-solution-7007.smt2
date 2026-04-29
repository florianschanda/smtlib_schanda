(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.54460702639330182961430182331241667270660400390625p770 {- 2452692001128228 770 (-9.59212e+231)}
; Y = 1.71850668095053915607195449410937726497650146484375p-898 {+ 3235866420592060 -898 (8.13233e-271)}
; -1.54460702639330182961430182331241667270660400390625p770 = 1.71850668095053915607195449410937726497650146484375p-898 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000001 #b1000101101101011010111011011011110000111111100100100)))
(assert (= y (fp #b0 #b00001111101 #b1011011111110000000011011100100010100011110110111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
