(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.664530211202040366202936638728715479373931884765625p-547 {- 2992778011545946 -547 (-3.61313e-165)}
; Y = -1.9446088648211323768322245086892507970333099365234375p-30 {- 4254140131619319 -30 (-1.81106e-009)}
; -1.664530211202040366202936638728715479373931884765625p-547 > -1.9446088648211323768322245086892507970333099365234375p-30 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011100 #b1010101000011110101001101110010001010001000101011010)))
(assert (= y (fp #b1 #b01111100001 #b1111000111010001111000101111010111101011000111110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
