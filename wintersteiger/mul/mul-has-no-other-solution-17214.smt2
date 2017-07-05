(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4764403898216806876320106312050484120845794677734375p-176 {+ 2145696762065175 -176 (1.54148e-053)}
; Y = 1.4067615020157269167810909493709914386272430419921875p-953 {+ 1831890948906691 -953 (1.84771e-287)}
; 1.4764403898216806876320106312050484120845794677734375p-176 * 1.4067615020157269167810909493709914386272430419921875p-953 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001111 #b0111100111110111111111110101010011000111000100010111)))
(assert (= y (fp #b0 #b00001000110 #b0110100000100001100001011001010001101101111011000011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
