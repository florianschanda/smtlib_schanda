(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.16129721350922210376666043885052204132080078125p-925 {+ 726418070656032 -925 (4.09447e-279)}
; Y = 1.272224114354922885894438877585344016551971435546875p-216 {+ 1225988419970094 -216 (1.20805e-065)}
; 1.16129721350922210376666043885052204132080078125p-925 * 1.272224114354922885894438877585344016551971435546875p-216 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100010 #b0010100101001010110001100011000011110101010000100000)))
(assert (= y (fp #b0 #b01100100111 #b0100010110110000011110101100010001010110010000101110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
