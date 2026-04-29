(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.596043356838860116653222576132975518703460693359375p-951 {+ 2684340639756150 -951 (8.3853e-287)}
; 1.596043356838860116653222576132975518703460693359375p-951 | == 1.596043356838860116653222576132975518703460693359375p-951
; [HW: 1.596043356838860116653222576132975518703460693359375p-951] 

; mpf : + 2684340639756150 -951
; mpfd: + 2684340639756150 -951 (8.3853e-287) class: Pos. norm. non-zero
; hwf : + 2684340639756150 -951 (8.3853e-287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001000 #b1001100010010110010011000010010010011110111101110110)))
(assert (= r (fp #b0 #b00001001000 #b1001100010010110010011000010010010011110111101110110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
