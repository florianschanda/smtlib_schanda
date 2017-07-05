(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.67008438086486421525478363037109375p-480 {+ 3017791767969792 -480 (5.34984e-145)}
; 1.67008438086486421525478363037109375p-480 S == 1.2923174458564210542732553221867419779300689697265625p-240
; [HW: 1.2923174458564210542732553221867419779300689697265625p-240] 

; mpf : + 1316480740232873 -240
; mpfd: + 1316480740232873 -240 (7.31426e-073) class: Pos. norm. non-zero
; hwf : + 1316480740232873 -240 (7.31426e-073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011111 #b1010101110001010101001100110010101100000000000000000)))
(assert (= r (fp #b0 #b01100001111 #b0100101011010101010100001110111000000000111010101001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
