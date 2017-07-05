(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.384803155718020928333089614170603454113006591796875p-133 {+ 1732999348702670 -133 (1.27174e-040)}
; 1.384803155718020928333089614170603454113006591796875p-133 | == 1.384803155718020928333089614170603454113006591796875p-133
; [HW: 1.384803155718020928333089614170603454113006591796875p-133] 

; mpf : + 1732999348702670 -133
; mpfd: + 1732999348702670 -133 (1.27174e-040) class: Pos. norm. non-zero
; hwf : + 1732999348702670 -133 (1.27174e-040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111010 #b0110001010000010011101011010100100110100110111001110)))
(assert (= r (fp #b0 #b01101111010 #b0110001010000010011101011010100100110100110111001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
