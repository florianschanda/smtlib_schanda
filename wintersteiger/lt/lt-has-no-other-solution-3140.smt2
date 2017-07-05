(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8377740983790367135242149743135087192058563232421875p-645 {- 3772999117280483 -645 (-1.25877e-194)}
; Y = 1.38649169033197239286891999654471874237060546875p398 {+ 1740603832560864 398 (8.95067e+119)}
; -1.8377740983790367135242149743135087192058563232421875p-645 < 1.38649169033197239286891999654471874237060546875p398 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101111010 #b1101011001111000010111010000000111111001010011100011)))
(assert (= y (fp #b0 #b10110001101 #b0110001011110001000111101001001000100110110011100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
