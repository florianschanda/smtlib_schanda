(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8057541952850064692626119722262956202030181884765625p-199 {- 3628794293637769 -199 (-2.24745e-060)}
; Y = 1.430664347571463768105104463757015764713287353515625p-365 {+ 1939539795244602 -365 (1.90366e-110)}
; -1.8057541952850064692626119722262956202030181884765625p-199 / 1.430664347571463768105104463757015764713287353515625p-365 == -1.2621787901196064307640654078568331897258758544921875p166
; [HW: -1.2621787901196064307640654078568331897258758544921875p166] 

; mpf : - 1180748301487107 166
; mpfd: - 1180748301487107 166 (-1.18059e+050) class: Neg. norm. non-zero
; hwf : - 1180748301487107 166 (-1.18059e+050) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100111000 #b1100111001000101111010000010110101011101001010001001)))
(assert (= y (fp #b0 #b01010010010 #b0110111001000000000001001100100001011111011000111010)))
(assert (= r (fp #b1 #b10010100101 #b0100001100011110001001100011000101000100110000000011)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
