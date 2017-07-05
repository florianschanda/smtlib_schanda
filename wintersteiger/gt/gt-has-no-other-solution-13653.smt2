(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.763401626300929780910564659279771149158477783203125p-858 {- 3438055279742898 -858 (-9.17519e-259)}
; Y = 1.23128918332928538603709966992028057575225830078125p511 {+ 1041633879856596 511 (8.25444e+153)}
; -1.763401626300929780910564659279771149158477783203125p-858 > 1.23128918332928538603709966992028057575225830078125p511 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100101 #b1100001101101110010010011111101010101100111110110010)))
(assert (= y (fp #b0 #b10111111110 #b0011101100110101110001001001011001010001010111010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
