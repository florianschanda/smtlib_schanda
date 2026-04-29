(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.85816090638835351711577459354884922504425048828125p-231 {- 3864813138234516 -231 (-5.38461e-070)}
; Y = 1.2888637765175798843841903362772427499294281005859375p604 {+ 1300926796285407 604 (8.55706e+181)}
; -1.85816090638835351711577459354884922504425048828125p-231 < 1.2888637765175798843841903362772427499294281005859375p604 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011000 #b1101101110110000011011101110001110100100110010010100)))
(assert (= y (fp #b0 #b11001011011 #b0100100111110010111110011111100100100100010111011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
