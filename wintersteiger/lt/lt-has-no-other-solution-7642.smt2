(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8976207808284499822804036739398725330829620361328125p-350 {- 4042524614059021 -350 (-8.27391e-106)}
; Y = 1.6709030151630746008351025011506862938404083251953125p-933 {+ 3021478569090165 -933 (2.30126e-281)}
; -1.8976207808284499822804036739398725330829620361328125p-350 < 1.6709030151630746008351025011506862938404083251953125p-933 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100001 #b1110010111001010011110011011100111011110010000001101)))
(assert (= y (fp #b0 #b00001011010 #b1010101111000000010011001100110011101001110001110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
