(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.655012789625763591772056315676309168338775634765625p-138 {- 2949915355281498 -138 (-4.74965e-042)}
; Y = 1.2082911006608341164536568612675182521343231201171875p468 {+ 938059723320723 468 (9.20894e+140)}
; Z = -0.7430804579411167676283866967423819005489349365234375p-1022 {- 3346536873489911 -1023 (-1.65341e-308)}
; -1.655012789625763591772056315676309168338775634765625p-138 x 1.2082911006608341164536568612675182521343231201171875p468 -0.7430804579411167676283866967423819005489349365234375p-1022 == -1.9997372251846712298828379061887972056865692138671875p330
; [HW: -1.9997372251846712298828379061887972056865692138671875p330] 

; mpf : - 4502416194810099 330
; mpfd: - 4502416194810099 330 (-4.37393e+099) class: Neg. norm. non-zero
; hwf : - 4502416194810099 330 (-4.37393e+099) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110101 #b1010011110101110111010110000110111100111100001011010)))
(assert (= y (fp #b0 #b10111010011 #b0011010101010010100100001100100101100010110110010011)))
(assert (= z (fp #b1 #b00000000000 #b1011111000111010100001010101100100100111010111110111)))
(assert (= r (fp #b1 #b10101001001 #b1111111111101110110001110101111011000011000011110011)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
