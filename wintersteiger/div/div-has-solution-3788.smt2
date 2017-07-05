(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4806816204505282019709966334630735218524932861328125p709 {+ 2164797566744845 709 (3.98776e+213)}
; Y = -1.2682162740771112385829155755345709621906280517578125p538 {- 1207938711988381 538 (-1.14112e+162)}
; 1.4806816204505282019709966334630735218524932861328125p709 / -1.2682162740771112385829155755345709621906280517578125p538 == -1.1675308468407956663526192642166279256343841552734375p171
; [HW: -1.1675308468407956663526192642166279256343841552734375p171] 

; mpf : - 754491859405271 171
; mpfd: - 754491859405271 171 (-3.4946e+051) class: Neg. norm. non-zero
; hwf : - 754491859405271 171 (-3.4946e+051) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000100 #b0111101100001101111100110101111110011111100100001101)))
(assert (= y (fp #b1 #b11000011001 #b0100010010101001110100100101110101101010100010011101)))
(assert (= r (fp #b1 #b10010101010 #b0010101011100011010011010011010001000000100111010111)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
