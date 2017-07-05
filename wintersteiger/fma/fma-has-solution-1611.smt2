(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2528034634179909811990683010662905871868133544921875p-241 {- 1138525583647235 -241 (-3.54531e-073)}
; Y = 1.4770342254639736712107378480141051113605499267578125p655 {+ 2148371160042525 655 (2.2082e+197)}
; Z = -1.7403845822127215203778405339107848703861236572265625p150 {- 3334395728564073 150 (-2.48396e+045)}
; -1.2528034634179909811990683010662905871868133544921875p-241 x 1.4770342254639736712107378480141051113605499267578125p655 -1.7403845822127215203778405339107848703861236572265625p150 == -1.8504335932481759119383468714659102261066436767578125p414
; [HW: -1.8504335932481759119383468714659102261066436767578125p414] 

; mpf : - 3830012413655837 414
; mpfd: - 3830012413655837 414 (-7.82874e+124) class: Neg. norm. non-zero
; hwf : - 3830012413655837 414 (-7.82874e+124) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001110 #b0100000010110111101110100100111110110010001000000011)))
(assert (= y (fp #b0 #b11010001110 #b0111101000011110111010100011110101110000110000011101)))
(assert (= z (fp #b1 #b10010010101 #b1011110110001001110110000000111100010000111101101001)))
(assert (= r (fp #b1 #b10110011101 #b1101100110110110000001000001011001101011101100011101)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
