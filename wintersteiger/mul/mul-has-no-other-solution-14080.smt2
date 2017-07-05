(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.886429069610442876836486902902834117412567138671875p408 {+ 3992121627587966 408 (1.24704e+123)}
; Y = -1.3449233913008586949189293591189198195934295654296875p-2 {- 1553396856533915 -2 (-0.336231)}
; 1.886429069610442876836486902902834117412567138671875p408 * -1.3449233913008586949189293591189198195934295654296875p-2 == -1.2685512908745002480515040588215924799442291259765625p407
; [HW: -1.2685512908745002480515040588215924799442291259765625p407] 

; mpf : - 1209447493512265 407
; mpfd: - 1209447493512265 407 (-4.19292e+122) class: Neg. norm. non-zero
; hwf : - 1209447493512265 407 (-4.19292e+122) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010111 #b1110001011101101000000111111100000110011010101111110)))
(assert (= y (fp #b1 #b01111111101 #b0101100001001100111001100011110101000011001110011011)))
(assert (= r (fp #b1 #b10110010110 #b0100010010111111110001110000001110011010110001001001)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
