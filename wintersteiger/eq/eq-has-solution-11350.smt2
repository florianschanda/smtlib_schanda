(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0971126301767688548949308824376203119754791259765625p-135 {+ 437356405077065 -135 (2.51885e-041)}
; Y = -1.0783851267073958357656238149502314627170562744140625p-77 {- 353015227430817 -77 (-7.13615e-024)}
; 1.0971126301767688548949308824376203119754791259765625p-135 = -1.0783851267073958357656238149502314627170562744140625p-77 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101111000 #b0001100011011100010111111001001010100011010001001001)))
(assert (= y (fp #b1 #b01110110010 #b0001010000010001000011000011001110110011011110100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
