(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.559815926154394905012168237590231001377105712890625p502 {- 2521186796425002 502 (-2.04235e+151)}
; Y = -1.43078853246115755837308824993669986724853515625p110 {- 1940099074267552 110 (-1.85727e+033)}
; -1.559815926154394905012168237590231001377105712890625p502 < -1.43078853246115755837308824993669986724853515625p110 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110101 #b1000111101010000000110001011011010011100111100101010)))
(assert (= y (fp #b1 #b10001101101 #b0110111001001000001010000100001001101001100110100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
