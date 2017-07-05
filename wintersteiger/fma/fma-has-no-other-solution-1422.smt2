(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.797944147842030826467407678137533366680145263671875p50 {+ 3593620966883838 50 (2.02431e+015)}
; Y = 1.2844567084806286505482830762048251926898956298828125p-164 {+ 1281079126316397 -164 (5.49288e-050)}
; Z = 1.1599966500090876930784133946872316300868988037109375p-644 {+ 720560853361455 -644 (1.58906e-194)}
; 1.797944147842030826467407678137533366680145263671875p50 x 1.2844567084806286505482830762048251926898956298828125p-164 1.1599966500090876930784133946872316300868988037109375p-644 == 1.1546907110845918698061041141045279800891876220703125p-113
; [HW: 1.1546907110845918698061041141045279800891876220703125p-113] 

; mpf : + 696665028798245 -113
; mpfd: + 696665028798245 -113 (1.11193e-034) class: Pos. norm. non-zero
; hwf : + 696665028798245 -113 (1.11193e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110001 #b1100110001000110000100010101001100000100000111111110)))
(assert (= y (fp #b0 #b01101011011 #b0100100011010010001001111010010000001101010101101101)))
(assert (= z (fp #b0 #b00101111011 #b0010100011110101100010100101101101000010001100101111)))
(assert (= r (fp #b0 #b01110001110 #b0010011110011001110011110111100100011010011100100101)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
