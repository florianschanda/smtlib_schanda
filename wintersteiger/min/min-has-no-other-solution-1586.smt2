(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4968236894496573796686789137311279773712158203125p-610 {- 2237494982674312 -610 (-3.52268e-184)}
; Y = -1.0324669706073077435348750441335141658782958984375p26 {- 146218236728920 26 (-6.92877e+007)}
; -1.4968236894496573796686789137311279773712158203125p-610 m -1.0324669706073077435348750441335141658782958984375p26 == -1.0324669706073077435348750441335141658782958984375p26
; [HW: -1.0324669706073077435348750441335141658782958984375p26] 

; mpf : - 146218236728920 26
; mpfd: - 146218236728920 26 (-6.92877e+007) class: Neg. norm. non-zero
; hwf : - 146218236728920 26 (-6.92877e+007) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011101 #b0111111100101111110101100101101000010000011110001000)))
(assert (= y (fp #b1 #b10000011001 #b0000100001001111110000010110000011110101011001011000)))
(assert (= r (fp #b1 #b10000011001 #b0000100001001111110000010110000011110101011001011000)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
