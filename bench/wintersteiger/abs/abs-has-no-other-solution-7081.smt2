(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.33621771974404257576907184557057917118072509765625p-823 {+ 1514189997354628 -823 (2.38886e-248)}
; 1.33621771974404257576907184557057917118072509765625p-823 | == 1.33621771974404257576907184557057917118072509765625p-823
; [HW: 1.33621771974404257576907184557057917118072509765625p-823] 

; mpf : + 1514189997354628 -823
; mpfd: + 1514189997354628 -823 (2.38886e-248) class: Pos. norm. non-zero
; hwf : + 1514189997354628 -823 (2.38886e-248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001000 #b0101011000010010010111010100111010100010111010000100)))
(assert (= r (fp #b0 #b00011001000 #b0101011000010010010111010100111010100010111010000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
