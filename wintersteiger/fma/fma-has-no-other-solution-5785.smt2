(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.49437682772327296021330766961909830570220947265625p-1022 {- 2226475297115140 -1023 (-1.10002e-308)}
; Y = -1.66652990570197712116851107566617429256439208984375p-252 {- 3001783834950716 -252 (-2.30279e-076)}
; Z = -1.6359779582278257681338118345593102276325225830078125p-375 {- 2864190095690685 -375 (-2.12583e-113)}
; -0.49437682772327296021330766961909830570220947265625p-1022 x -1.66652990570197712116851107566617429256439208984375p-252 -1.6359779582278257681338118345593102276325225830078125p-375 == -1.63597795822782554608920690952800214290618896484375p-375
; [HW: -1.63597795822782554608920690952800214290618896484375p-375] 

; mpf : - 2864190095690684 -375
; mpfd: - 2864190095690684 -375 (-2.12583e-113) class: Neg. norm. non-zero
; hwf : - 2864190095690684 -375 (-2.12583e-113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0111111010001111011110101101001011111000110000000100)))
(assert (= y (fp #b1 #b01100000011 #b1010101010100001101101000011001011001011110000111100)))
(assert (= z (fp #b1 #b01010001000 #b1010001011001111011100111001001110010000101110111101)))
(assert (= r (fp #b1 #b01010001000 #b1010001011001111011100111001001110010000101110111100)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
