(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.19778184799355802425679939915426075458526611328125p-556 {- 890730256924436 -556 (-5.07809e-168)}
; Y = -1.8721993632907381055474616005085408687591552734375p-699 {- 3928036727508952 -699 (-7.11844e-211)}
; -1.19778184799355802425679939915426075458526611328125p-556 = -1.8721993632907381055474616005085408687591552734375p-699 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010011 #b0011001010100001110101001100100011011111111100010100)))
(assert (= y (fp #b1 #b00101000100 #b1101111101001000011101010001110011101100111111011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
