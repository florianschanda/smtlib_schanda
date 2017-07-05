(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.365679781279506954660973860882222652435302734375p252 {- 1646875326707312 252 (-9.88343e+075)}
; Y = -1.4103702854989796922069444917724467813968658447265625p-659 {- 1848143464857129 -659 (-5.89612e-199)}
; -1.365679781279506954660973860882222652435302734375p252 - -1.4103702854989796922069444917724467813968658447265625p-659 == -1.365679781279506954660973860882222652435302734375p252
; [HW: -1.365679781279506954660973860882222652435302734375p252] 

; mpf : - 1646875326707312 252
; mpfd: - 1646875326707312 252 (-9.88343e+075) class: Neg. norm. non-zero
; hwf : - 1646875326707312 252 (-9.88343e+075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111011 #b0101110110011101001100001010110101100111011001110000)))
(assert (= y (fp #b1 #b00101101100 #b0110100100001110000001101110101101110111111000101001)))
(assert (= r (fp #b1 #b10011111011 #b0101110110011101001100001010110101100111011001110000)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
