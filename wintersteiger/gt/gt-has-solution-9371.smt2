(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6536106220872870409266397473402321338653564453125p871 {- 2943600554077704 871 (-2.60351e+262)}
; Y = 1.6473774759355566121854508310207165777683258056640625p-426 {+ 2915528959391425 -426 (9.50638e-129)}
; -1.6536106220872870409266397473402321338653564453125p871 > 1.6473774759355566121854508310207165777683258056640625p-426 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100110 #b1010011101010011000001101001011000101110111000001000)))
(assert (= y (fp #b0 #b01001010101 #b1010010110111010100001111011111101001111011011000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
