(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4661185483881842284148433463997207581996917724609375p-116 {+ 2099211320831503 -116 (1.76478e-035)}
; 1.4661185483881842284148433463997207581996917724609375p-116 | == 1.4661185483881842284148433463997207581996917724609375p-116
; [HW: 1.4661185483881842284148433463997207581996917724609375p-116] 

; mpf : + 2099211320831503 -116
; mpfd: + 2099211320831503 -116 (1.76478e-035) class: Pos. norm. non-zero
; hwf : + 2099211320831503 -116 (1.76478e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001011 #b0111011101010011100010111001000101100010111000001111)))
(assert (= r (fp #b0 #b01110001011 #b0111011101010011100010111001000101100010111000001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
