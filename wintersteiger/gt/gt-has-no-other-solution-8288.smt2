(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.483783694577673895054203967447392642498016357421875p662 {- 2178768066627934 662 (-2.83941e+199)}
; Y = -1.71648264079522672176381092867814004421234130859375p331 {- 3226750954102812 331 (-7.50876e+099)}
; -1.483783694577673895054203967447392642498016357421875p662 > -1.71648264079522672176381092867814004421234130859375p331 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010010101 #b0111101111011001001111111000101010001100100101011110)))
(assert (= y (fp #b1 #b10101001010 #b1011011101101011011010000000011001011110000000011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
