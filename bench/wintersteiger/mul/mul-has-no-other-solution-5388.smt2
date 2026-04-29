(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.647202271492102187977479843539185822010040283203125p-910 {+ 2914739908725170 -910 (1.90305e-274)}
; Y = -1.1752655824063962253234194577089510858058929443359375p-222 {- 789326011616319 -222 (-1.74372e-067)}
; 1.647202271492102187977479843539185822010040283203125p-910 * -1.1752655824063962253234194577089510858058929443359375p-222 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110001 #b1010010110101111000011000100110111110100100110110010)))
(assert (= y (fp #b1 #b01100100001 #b0010110011011110001101001000100010001100110000111111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
