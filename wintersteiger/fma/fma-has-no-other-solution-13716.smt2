(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.042590735597908047083137716981582343578338623046875p495 {+ 191811620968174 495 (1.0665e+149)}
; Y = -1.744046622448214289846646352089010179042816162109375p-385 {- 3350888091604054 -385 (-2.21314e-116)}
; Z = -1.230120772958146257991529637365601956844329833984375p187 {- 1036371827344518 187 (-2.413e+056)}
; 1.042590735597908047083137716981582343578338623046875p495 x -1.744046622448214289846646352089010179042816162109375p-385 -1.230120772958146257991529637365601956844329833984375p187 == -1.230120772958146257991529637365601956844329833984375p187
; [HW: -1.230120772958146257991529637365601956844329833984375p187] 

; mpf : - 1036371827344518 187
; mpfd: - 1036371827344518 187 (-2.413e+056) class: Neg. norm. non-zero
; hwf : - 1036371827344518 187 (-2.413e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101110 #b0000101011100111001110011111100010000001011011101110)))
(assert (= y (fp #b1 #b01001111110 #b1011111001111001110101101110011000011101010001010110)))
(assert (= z (fp #b1 #b10010111010 #b0011101011101001001100011110100111111100010010000110)))
(assert (= r (fp #b1 #b10010111010 #b0011101011101001001100011110100111111100010010000110)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
