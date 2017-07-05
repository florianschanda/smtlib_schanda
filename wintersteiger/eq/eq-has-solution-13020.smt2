(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3881268083496178800118059371015988290309906005859375p464 {+ 1747967749455839 464 (6.61222e+139)}
; Y = 1.490972597253335862887979601509869098663330078125p-630 {+ 2211144006039248 -630 (3.34636e-190)}
; 1.3881268083496178800118059371015988290309906005859375p464 = 1.490972597253335862887979601509869098663330078125p-630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111001111 #b0110001101011100010001110100110010001111111111011111)))
(assert (= y (fp #b0 #b00110001001 #b0111110110110000011000010101000001101111011011010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
