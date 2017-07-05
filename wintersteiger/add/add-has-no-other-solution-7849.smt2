(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0288460665224696821695715698297135531902313232421875p-117 {- 129911134441699 -117 (-6.19214e-036)}
; Y = -1.406153634172295330273527724784798920154571533203125p-308 {- 1829153355513522 -308 (-2.69646e-093)}
; -1.0288460665224696821695715698297135531902313232421875p-117 + -1.406153634172295330273527724784798920154571533203125p-308 == -1.02884606652246990421417649486102163791656494140625p-117
; [HW: -1.02884606652246990421417649486102163791656494140625p-117] 

; mpf : - 129911134441700 -117
; mpfd: - 129911134441700 -117 (-6.19214e-036) class: Neg. norm. non-zero
; hwf : - 129911134441700 -117 (-6.19214e-036) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001010 #b0000011101100010011101001011000001010101000011100011)))
(assert (= y (fp #b1 #b01011001011 #b0110011111111001101011110011111111101011111010110010)))
(assert (= r (fp #b1 #b01110001010 #b0000011101100010011101001011000001010101000011100100)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
