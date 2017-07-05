(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.538242244880514864036058497731573879718780517578125p-678 {+ 2424027573478946 -678 (1.22656e-204)}
; 1.538242244880514864036058497731573879718780517578125p-678 S == 1.2402589426730672439447289434610866010189056396484375p-339
; [HW: 1.2402589426730672439447289434610866010189056396484375p-339] 

; mpf : + 1082030084694855 -339
; mpfd: + 1082030084694855 -339 (1.1075e-102) class: Pos. norm. non-zero
; hwf : + 1082030084694855 -339 (1.1075e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011001 #b1000100111001010001111100110011100010110011000100010)))
(assert (= r (fp #b0 #b01010101100 #b0011110110000001100111000010110101011010001101000111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
