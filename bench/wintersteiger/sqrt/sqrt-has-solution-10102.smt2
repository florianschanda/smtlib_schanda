(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4755399523481067536323507738416083157062530517578125p-621 {+ 2141641552194717 -621 (1.6956e-187)}
; 1.4755399523481067536323507738416083157062530517578125p-621 S == 1.717870747377757023599542662850581109523773193359375p-311
; [HW: 1.717870747377757023599542662850581109523773193359375p-311] 

; mpf : + 3233002430390646 -311
; mpfd: + 3233002430390646 -311 (4.11777e-094) class: Pos. norm. non-zero
; hwf : + 3233002430390646 -311 (4.11777e-094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110010010 #b0111100110111100111111000111111101000110110010011101)))
(assert (= r (fp #b0 #b01011001000 #b1011011111000110011000001001011010111110000101110110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
