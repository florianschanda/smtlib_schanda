(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.28890822522293380103519666590727865695953369140625p-55 {+ 1301126975458276 -55 (3.57744e-017)}
; 1.28890822522293380103519666590727865695953369140625p-55 | == 1.28890822522293380103519666590727865695953369140625p-55
; [HW: 1.28890822522293380103519666590727865695953369140625p-55] 

; mpf : + 1301126975458276 -55
; mpfd: + 1301126975458276 -55 (3.57744e-017) class: Pos. norm. non-zero
; hwf : + 1301126975458276 -55 (3.57744e-017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001000 #b0100100111110101111000111011001011100000101111100100)))
(assert (= r (fp #b0 #b01111001000 #b0100100111110101111000111011001011100000101111100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
