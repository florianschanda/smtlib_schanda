(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.353551923547553936799658913514576852321624755859375p457 {- 1592256311144886 457 (-5.03713e+137)}
; Y = 0.562157907957509639373938625794835388660430908203125p-1022 {+ 2531734144800818 -1023 (1.25084e-308)}
; -1.353551923547553936799658913514576852321624755859375p457 < 0.562157907957509639373938625794835388660430908203125p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001000 #b0101101010000010011000001111110100010011000110110110)))
(assert (= y (fp #b0 #b00000000000 #b1000111111101001100101001010010111011101100000110010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
