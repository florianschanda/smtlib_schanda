(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.271772141785078247266937978565692901611328125p1020 {- 1223952916472960 1020 (-1.42891e+307)}
; Y = -1.097563796123084411959780481993220746517181396484375p986 {- 439388275864774 986 (-7.17803e+296)}
; -1.271772141785078247266937978565692901611328125p1020 > -1.097563796123084411959780481993220746517181396484375p986 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111011 #b0100010110010010110110111110110011101110010010000000)))
(assert (= y (fp #b1 #b11111011001 #b0001100011111001111100001110000110011111010011000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
