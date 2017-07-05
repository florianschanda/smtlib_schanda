(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8481702557331403102836020480026490986347198486328125p-90 {+ 3819819247666509 -90 (1.49294e-027)}
; 1.8481702557331403102836020480026490986347198486328125p-90 S == 1.3594742571057165658743315361789427697658538818359375p-45
; [HW: 1.3594742571057165658743315361789427697658538818359375p-45] 

; mpf : + 1618928130350591 -45
; mpfd: + 1618928130350591 -45 (3.86386e-014) class: Pos. norm. non-zero
; hwf : + 1618928130350591 -45 (3.86386e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100101 #b1101100100100001101011111001010111010000010101001101)))
(assert (= r (fp #b0 #b01111010010 #b0101110000000110100000010100001000000101110111111111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
