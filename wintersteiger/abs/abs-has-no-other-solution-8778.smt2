(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.28548605688558392756704051862470805644989013671875p328 {- 1285714899409388 328 (-7.0292e+098)}
; -1.28548605688558392756704051862470805644989013671875p328 | == 1.28548605688558392756704051862470805644989013671875p328
; [HW: 1.28548605688558392756704051862470805644989013671875p328] 

; mpf : + 1285714899409388 328
; mpfd: + 1285714899409388 328 (7.0292e+098) class: Pos. norm. non-zero
; hwf : + 1285714899409388 328 (7.0292e+098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000111 #b0100100100010101100111010011110111001001100111101100)))
(assert (= r (fp #b0 #b10101000111 #b0100100100010101100111010011110111001001100111101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
