(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8708503611957858492331752131576649844646453857421875p-574 {+ 3921961362176803 -574 (3.02567e-173)}
; 1.8708503611957858492331752131576649844646453857421875p-574 | == 1.8708503611957858492331752131576649844646453857421875p-574
; [HW: 1.8708503611957858492331752131576649844646453857421875p-574] 

; mpf : + 3921961362176803 -574
; mpfd: + 3921961362176803 -574 (3.02567e-173) class: Pos. norm. non-zero
; hwf : + 3921961362176803 -574 (3.02567e-173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000001 #b1101111011110000000011001001110100001011101100100011)))
(assert (= r (fp #b0 #b00111000001 #b1101111011110000000011001001110100001011101100100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
