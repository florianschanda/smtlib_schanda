(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3436532114959618411376141011714935302734375p-688 {+ 1547676475237888 -688 (1.04629e-207)}
; Y = -1.8342339928777164903550556118716485798358917236328125p643 {- 3757055899463885 643 (-6.69487e+193)}
; 1.3436532114959618411376141011714935302734375p-688 M -1.8342339928777164903550556118716485798358917236328125p643 == 1.3436532114959618411376141011714935302734375p-688
; [HW: 1.3436532114959618411376141011714935302734375p-688] 

; mpf : + 1547676475237888 -688
; mpfd: + 1547676475237888 -688 (1.04629e-207) class: Pos. norm. non-zero
; hwf : + 1547676475237888 -688 (1.04629e-207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001111 #b0101011111111001101010000010100010001010011000000000)))
(assert (= y (fp #b1 #b11010000010 #b1101010110010000010110111110010010011111000011001101)))
(assert (= r (fp #b0 #b00101001111 #b0101011111111001101010000010100010001010011000000000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
