(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7086096982009391087586891444516368210315704345703125p996 {- 3191294372768869 996 (-1.14424e+300)}
; Y = 1.4687522939979391622955517959780991077423095703125p-357 {+ 2111072656578184 -357 (5.00311e-108)}
; Z = -1.1766660239293520451298036277876235544681549072265625p-127 {- 795633039537257 -127 (-6.91582e-039)}
; -1.7086096982009391087586891444516368210315704345703125p996 x 1.4687522939979391622955517959780991077423095703125p-357 -1.1766660239293520451298036277876235544681549072265625p-127 == -1.2547622068898778291412554608541540801525115966796875p640
; [HW: -1.2547622068898778291412554608541540801525115966796875p640] 

; mpf : - 1147346980017339 640
; mpfd: - 1147346980017339 640 (-5.72478e+192) class: Neg. norm. non-zero
; hwf : - 1147346980017339 640 (-5.72478e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100011 #b1011010101100111011100011111011101100110110001100101)))
(assert (= y (fp #b0 #b01010011010 #b0111100000000000001001100111110010100101011010001000)))
(assert (= z (fp #b1 #b01110000000 #b0010110100111001111111000000101100010111010001101001)))
(assert (= r (fp #b1 #b11001111111 #b0100000100111000000110001001001011011001010010111011)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
