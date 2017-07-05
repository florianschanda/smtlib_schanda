(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.132243819240146276428049532114528119564056396484375p159 {+ 595573215051974 159 (8.27388e+047)}
; 1.132243819240146276428049532114528119564056396484375p159 | == 1.132243819240146276428049532114528119564056396484375p159
; [HW: 1.132243819240146276428049532114528119564056396484375p159] 

; mpf : + 595573215051974 159
; mpfd: + 595573215051974 159 (8.27388e+047) class: Pos. norm. non-zero
; hwf : + 595573215051974 159 (8.27388e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011110 #b0010000111011010101110110001111010111100000011000110)))
(assert (= r (fp #b0 #b10010011110 #b0010000111011010101110110001111010111100000011000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
