(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.412811260487293107956929816282354295253753662109375p-854 {+ 1859136638904918 -854 (1.17616e-257)}
; Y = -1.33693085509910414288015090278349816799163818359375p792 {- 1517401673473948 792 (-3.48229e+238)}
; Z = -1.5676272483917610411907617162796668708324432373046875p-801 {- 2556365864342475 -801 (-1.17548e-241)}
; 1.412811260487293107956929816282354295253753662109375p-854 x -1.33693085509910414288015090278349816799163818359375p792 -1.5676272483917610411907617162796668708324432373046875p-801 == -1.888830966576919845323345725773833692073822021484375p-62
; [HW: -1.888830966576919845323345725773833692073822021484375p-62] 

; mpf : - 4002938809871174 -62
; mpfd: - 4002938809871174 -62 (-4.09575e-019) class: Neg. norm. non-zero
; hwf : - 4002938809871174 -62 (-4.09575e-019) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101001 #b0110100110101101111111111010111100110110101001010110)))
(assert (= y (fp #b1 #b11100010111 #b0101011001000001000110011011101110101001111110011100)))
(assert (= z (fp #b1 #b00011011110 #b1001000101010000000001001111010000101001001111001011)))
(assert (= r (fp #b1 #b01111000001 #b1110001110001010011011010001110100011110101101000110)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
