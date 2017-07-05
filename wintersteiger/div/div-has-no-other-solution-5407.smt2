(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1875855484166251141431303040008060634136199951171875p-351 {- 844810205949203 -351 (-2.58903e-106)}
; Y = 1.85419274777967046929916250519454479217529296875p-903 {+ 3846942140603104 -903 (2.74201e-272)}
; -1.1875855484166251141431303040008060634136199951171875p-351 / 1.85419274777967046929916250519454479217529296875p-903 == -1.2809731349005828437981335810036398470401763916015625p551
; [HW: -1.2809731349005828437981335810036398470401763916015625p551] 

; mpf : - 1265390505639385 551
; mpfd: - 1265390505639385 551 (-9.44208e+165) class: Neg. norm. non-zero
; hwf : - 1265390505639385 551 (-9.44208e+165) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100000 #b0011000000000101100110110100001110100110110100010011)))
(assert (= y (fp #b0 #b00001111000 #b1101101010101100011000000011110000110001101011100000)))
(assert (= r (fp #b1 #b11000100110 #b0100011111101101110110101111100101110011110111011001)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
