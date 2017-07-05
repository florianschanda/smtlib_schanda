(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.851353778334179356335198463057167828083038330078125p686 {- 3834156558866274 686 (-5.94383e+206)}
; Y = -1.13739229323800206117311972775496542453765869140625p-20 {- 618759880630244 -20 (-1.0847e-006)}
; -1.851353778334179356335198463057167828083038330078125p686 < -1.13739229323800206117311972775496542453765869140625p-20 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101101 #b1101100111110010010100100011101101000101011101100010)))
(assert (= y (fp #b1 #b01111101011 #b0010001100101100001001000010111000101101111111100100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
