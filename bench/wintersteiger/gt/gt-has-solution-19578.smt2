(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7964591694120175535687167212017811834812164306640625p492 {+ 3586933218579777 492 (2.29708e+148)}
; Y = 1.3469261190911883119269987219013273715972900390625p-852 {+ 1562416340664168 -852 (4.48526e-257)}
; 1.7964591694120175535687167212017811834812164306640625p492 > 1.3469261190911883119269987219013273715972900390625p-852 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101011 #b1100101111100100101111111000010100111001010101000001)))
(assert (= y (fp #b0 #b00010101011 #b0101100011010000001001100110111110011111111101101000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
