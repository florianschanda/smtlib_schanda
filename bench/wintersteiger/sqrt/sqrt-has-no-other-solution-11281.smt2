(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0654512273820768708532114033005200326442718505859375p-725 {+ 294766123248863 -725 (6.03652e-219)}
; 1.0654512273820768708532114033005200326442718505859375p-725 S == 1.459761095098836225503191599273122847080230712890625p-363
; [HW: 1.459761095098836225503191599273122847080230712890625p-363] 

; mpf : + 2070579896566570 -363
; mpfd: + 2070579896566570 -363 (7.76951e-110) class: Pos. norm. non-zero
; hwf : + 2070579896566570 -363 (7.76951e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100101010 #b0001000011000001011010010110000100010110110011011111)))
(assert (= r (fp #b0 #b01010010100 #b0111010110110010111001110011001101101100001100101010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
