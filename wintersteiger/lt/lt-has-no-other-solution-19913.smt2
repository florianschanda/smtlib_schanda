(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.78758284757242247309250160469673573970794677734375p-254 {- 3546957818850556 -254 (-6.17515e-077)}
; Y = 1.0973376675056230045157690256019122898578643798828125p-731 {+ 438369883107437 -731 (9.71434e-221)}
; -1.78758284757242247309250160469673573970794677734375p-254 < 1.0973376675056230045157690256019122898578643798828125p-731 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000001 #b1100100110011111000001111000110100110110110011111100)))
(assert (= y (fp #b0 #b00100100100 #b0001100011101011000111110001001010011011000001101101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
