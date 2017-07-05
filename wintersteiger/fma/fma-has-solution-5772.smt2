(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.020388376863067048105904177646152675151824951171875p-567 {- 91821086443198 -567 (-2.11231e-171)}
; Y = 1.18372498141957205319840795709751546382904052734375p815 {+ 827423757859836 815 (2.58641e+245)}
; Z = 1.98353298458596061237813046318478882312774658203125p-873 {+ 4429438782887924 -873 (3.14958e-263)}
; -1.020388376863067048105904177646152675151824951171875p-567 x 1.18372498141957205319840795709751546382904052734375p815 1.98353298458596061237813046318478882312774658203125p-873 == -1.2078592124429812226793501395150087773799896240234375p248
; [HW: -1.2078592124429812226793501395150087773799896240234375p248] 

; mpf : - 936114671703735 248
; mpfd: - 936114671703735 248 (-5.4633e+074) class: Neg. norm. non-zero
; hwf : - 936114671703735 248 (-5.4633e+074) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111001000 #b0000010100111000001011000011001111011000011010111110)))
(assert (= y (fp #b0 #b11100101110 #b0010111100001000100110011011001010100111101111111100)))
(assert (= z (fp #b0 #b00010010110 #b1111101111001000110100010101001101010101011111110100)))
(assert (= r (fp #b1 #b10011110111 #b0011010100110110010000101110011110011101011010110111)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
