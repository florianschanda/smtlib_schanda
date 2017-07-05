(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8987106637403012854292683186940848827362060546875p-127 {+ 4047433010334712 -127 (1.11596e-038)}
; 1.8987106637403012854292683186940848827362060546875p-127 | == 1.8987106637403012854292683186940848827362060546875p-127
; [HW: 1.8987106637403012854292683186940848827362060546875p-127] 

; mpf : + 4047433010334712 -127
; mpfd: + 4047433010334712 -127 (1.11596e-038) class: Pos. norm. non-zero
; hwf : + 4047433010334712 -127 (1.11596e-038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110000000 #b1110011000010001111001101110110101010100101111111000)))
(assert (= r (fp #b0 #b01110000000 #b1110011000010001111001101110110101010100101111111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
