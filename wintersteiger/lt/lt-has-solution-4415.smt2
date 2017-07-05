(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1074002310980812779916959698311984539031982421875p-689 {- 483687640752824 -689 (-4.31159e-208)}
; Y = 1.4847276159231623804402033783844672143459320068359375p-871 {+ 2183019110447743 -871 (9.43019e-263)}
; -1.1074002310980812779916959698311984539031982421875p-689 < 1.4847276159231623804402033783844672143459320068359375p-871 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001110 #b0001101101111110100101001110000000100110001010111000)))
(assert (= y (fp #b0 #b00010011000 #b0111110000010111000110111110100111011011101001111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
