(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.036164460075176041442546193138696253299713134765625p1017 {- 162870248918618 1017 (-1.45524e+306)}
; Y = 1.25165226755094227684139696066267788410186767578125p416 {+ 1133341058369364 416 (2.11818e+125)}
; -1.036164460075176041442546193138696253299713134765625p1017 > 1.25165226755094227684139696066267788410186767578125p416 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111000 #b0000100101000010000100101111010101001100111001011010)))
(assert (= y (fp #b0 #b10110011111 #b0100000001101100010010000111001100011000011101010100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
