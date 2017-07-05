(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5476006295850430749538872987614013254642486572265625p874 {+ 2466173991347049 874 (1.94928e+263)}
; Y = 1.6540009595053437596590129032847471535205841064453125p-820 {+ 2945358477528213 -820 (2.36559e-247)}
; 1.5476006295850430749538872987614013254642486572265625p874 - 1.6540009595053437596590129032847471535205841064453125p-820 == 1.5476006295850430749538872987614013254642486572265625p874
; [HW: 1.5476006295850430749538872987614013254642486572265625p874] 

; mpf : + 2466173991347049 874
; mpfd: + 2466173991347049 874 (1.94928e+263) class: Pos. norm. non-zero
; hwf : + 2466173991347049 874 (1.94928e+263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101001 #b1000110000101111100011100000101101010110001101101001)))
(assert (= y (fp #b0 #b00011001011 #b1010011101101100100110110101110010100000110010010101)))
(assert (= r (fp #b0 #b11101101001 #b1000110000101111100011100000101101010110001101101001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
