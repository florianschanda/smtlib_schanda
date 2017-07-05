(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.70663899327604529077007100568152964115142822265625p-692 {+ 3182419106803460 -692 (8.30586e-209)}
; Y = 1.67652229080386749870967832976020872592926025390625p-325 {+ 3046785536772132 -325 (2.45279e-098)}
; Z = -1.3040374816137070279609133649501018226146697998046875p-299 {- 1369263088902155 -299 (-1.28033e-090)}
; 1.70663899327604529077007100568152964115142822265625p-692 x 1.67652229080386749870967832976020872592926025390625p-325 -1.3040374816137070279609133649501018226146697998046875p-299 == -1.304037481613706805916308439918793737888336181640625p-299
; [HW: -1.304037481613706805916308439918793737888336181640625p-299] 

; mpf : - 1369263088902154 -299
; mpfd: - 1369263088902154 -299 (-1.28033e-090) class: Neg. norm. non-zero
; hwf : - 1369263088902154 -299 (-1.28033e-090) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001011 #b1011010011100110010010110000011000110010111100000100)))
(assert (= y (fp #b0 #b01010111010 #b1010110100110000100100001001101000000100100000100100)))
(assert (= z (fp #b1 #b01011010100 #b0100110111010101011001101000000001001010000000001011)))
(assert (= r (fp #b1 #b01011010100 #b0100110111010101011001101000000001001010000000001010)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
