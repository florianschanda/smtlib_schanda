(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6308953602057585374751624840428121387958526611328125p-901 {- 2841300109132429 -901 (-9.64717e-272)}
; Y = 1.654575639324642910565899001085199415683746337890625p-608 {+ 2947946605348266 -608 (1.55758e-183)}
; -1.6308953602057585374751624840428121387958526611328125p-901 < 1.654575639324642910565899001085199415683746337890625p-608 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111010 #b1010000110000010010110111011101101001000001010001101)))
(assert (= y (fp #b0 #b00110011111 #b1010011110010010010001001110001110101000010110101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
