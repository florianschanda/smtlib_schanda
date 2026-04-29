(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3544041422839996346993984843720681965351104736328125p81 {+ 1596094363128781 81 (3.27475e+024)}
; 1.3544041422839996346993984843720681965351104736328125p81 | == 1.3544041422839996346993984843720681965351104736328125p81
; [HW: 1.3544041422839996346993984843720681965351104736328125p81] 

; mpf : + 1596094363128781 81
; mpfd: + 1596094363128781 81 (3.27475e+024) class: Pos. norm. non-zero
; hwf : + 1596094363128781 81 (3.27475e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010000 #b0101101010111010001110101101100010101101001111001101)))
(assert (= r (fp #b0 #b10001010000 #b0101101010111010001110101101100010101101001111001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
