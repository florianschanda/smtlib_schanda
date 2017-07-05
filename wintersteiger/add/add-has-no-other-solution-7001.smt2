(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.165596436391159951284635099000297486782073974609375p933 {- 745780049225110 933 (-8.46319e+280)}
; Y = 1.2340902115184941845171806562575511634349822998046875p391 {+ 1054248589365771 391 (6.22408e+117)}
; -1.165596436391159951284635099000297486782073974609375p933 + 1.2340902115184941845171806562575511634349822998046875p391 == -1.1655964363911597292400301739689894020557403564453125p933
; [HW: -1.1655964363911597292400301739689894020557403564453125p933] 

; mpf : - 745780049225109 933
; mpfd: - 745780049225109 933 (-8.46319e+280) class: Neg. norm. non-zero
; hwf : - 745780049225109 933 (-8.46319e+280) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100100 #b0010101001100100100001110010111010100010010110010110)))
(assert (= y (fp #b0 #b10110000110 #b0011101111101101010101100000101011001001001000001011)))
(assert (= r (fp #b1 #b11110100100 #b0010101001100100100001110010111010100010010110010101)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
