(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.58910184126652698211046299547888338565826416015625p615 {+ 2653078832811204 615 (2.16072e+185)}
; Y = 1.7547253889868645870819818810559809207916259765625p-820 {+ 3398980980608296 -820 (2.50965e-247)}
; 1.58910184126652698211046299547888338565826416015625p615 + 1.7547253889868645870819818810559809207916259765625p-820 == 1.5891018412665272041550679205101914703845977783203125p615
; [HW: 1.5891018412665272041550679205101914703845977783203125p615] 

; mpf : + 2653078832811205 615
; mpfd: + 2653078832811205 615 (2.16072e+185) class: Pos. norm. non-zero
; hwf : + 2653078832811205 615 (2.16072e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100110 #b1001011011001111011000001101011001000000110011000100)))
(assert (= y (fp #b0 #b00011001011 #b1100000100110101101011101101111100101000110100101000)))
(assert (= r (fp #b0 #b11001100110 #b1001011011001111011000001101011001000000110011000101)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
