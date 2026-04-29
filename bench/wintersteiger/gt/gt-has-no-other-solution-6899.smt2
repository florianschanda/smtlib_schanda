(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3358692829884877273372012496110983192920684814453125p-188 {+ 1512620777712149 -188 (3.40506e-057)}
; Y = 1.1275613860275159883173046182491816580295562744140625p-668 {+ 574485410580385 -668 (9.20668e-202)}
; 1.3358692829884877273372012496110983192920684814453125p-188 > 1.1275613860275159883173046182491816580295562744140625p-668 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000011 #b0101010111111011100001111000001000101010101000010101)))
(assert (= y (fp #b0 #b00101100011 #b0010000010100111110111001110110100111000011110100001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
