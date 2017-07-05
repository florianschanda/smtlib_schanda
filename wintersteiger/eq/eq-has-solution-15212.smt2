(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9561481960888003062137840970535762608051300048828125p94 {- 4306108659616493 94 (-3.87455e+028)}
; Y = -1.455164540999832833989557911991141736507415771484375p1003 {- 2049878857239110 1003 (-1.24738e+302)}
; -1.9561481960888003062137840970535762608051300048828125p94 = -1.455164540999832833989557911991141736507415771484375p1003 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011101 #b1111010011000110001000001101000001010100101011101101)))
(assert (= y (fp #b1 #b11111101010 #b0111010010000101101010011101000111100100101001000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
