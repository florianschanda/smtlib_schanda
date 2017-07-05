(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.450038771660700387400311228702776134014129638671875p463 {- 2026794444353406 463 (-3.45356e+139)}
; Y = -1.2924795555105410560514656026498414576053619384765625p-629 {- 1317210817210761 -629 (-5.80172e-190)}
; -1.450038771660700387400311228702776134014129638671875p463 > -1.2924795555105410560514656026498414576053619384765625p-629 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001110 #b0111001100110101101111011010111000110110111101111110)))
(assert (= y (fp #b1 #b00110001010 #b0100101011011111111100001010110110101010100110001001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
