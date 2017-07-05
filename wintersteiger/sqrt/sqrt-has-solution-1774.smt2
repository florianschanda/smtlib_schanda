(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.030906360631836715668896431452594697475433349609375p98 {+ 139189874224918 98 (3.26707e+029)}
; 1.030906360631836715668896431452594697475433349609375p98 S == 1.0153355901532441496470937636331655085086822509765625p49
; [HW: 1.0153355901532441496470937636331655085086822509765625p49] 

; mpf : + 69065358099657 49
; mpfd: + 69065358099657 49 (5.71583e+014) class: Pos. norm. non-zero
; hwf : + 69065358099657 49 (5.71583e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100001 #b0000011111101001011110101011000000100110111100010110)))
(assert (= r (fp #b0 #b10000110000 #b0000001111101101000010001000001000101100010011001001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
