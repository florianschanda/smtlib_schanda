(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5216060646125619815194340844755060970783233642578125p-84 {+ 2349104878223325 -84 (7.86652e-026)}
; 1.5216060646125619815194340844755060970783233642578125p-84 S == 1.2335339738379975660365062140044756233692169189453125p-42
; [HW: 1.2335339738379975660365062140044756233692169189453125p-42] 

; mpf : + 1051743517555157 -42
; mpfd: + 1051743517555157 -42 (2.80473e-013) class: Pos. norm. non-zero
; hwf : + 1051743517555157 -42 (2.80473e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101011 #b1000010110000111111110011001110011100111111111011101)))
(assert (= r (fp #b0 #b01111010101 #b0011101111001000111000011110110000100011100111010101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
