(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.329887443475474828602500565466471016407012939453125p-892 {+ 1485680967510354 -892 (4.02772e-269)}
; Y = -1.271350315639534045430991682223975658416748046875p-66 {- 1222053180401072 -66 (-1.723e-020)}
; 1.329887443475474828602500565466471016407012939453125p-892 / -1.271350315639534045430991682223975658416748046875p-66 == -1.0460432715639782497163423613528721034526824951171875p-826
; [HW: -1.0460432715639782497163423613528721034526824951171875p-826] 

; mpf : - 207360460658451 -826
; mpfd: - 207360460658451 -826 (-2.33762e-249) class: Neg. norm. non-zero
; hwf : - 207360460658451 -826 (-2.33762e-249) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000011 #b0101010001110011100000001110010100010110100101010010)))
(assert (= y (fp #b1 #b01110111101 #b0100010101110111001101101101101101101110010110110000)))
(assert (= r (fp #b1 #b00011000101 #b0000101111001001011111011110100110010001011100010011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
