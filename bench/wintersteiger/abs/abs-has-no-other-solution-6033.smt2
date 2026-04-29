(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3690442406036549272130287135951220989227294921875p-575 {+ 1662027504465848 -575 (1.10706e-173)}
; 1.3690442406036549272130287135951220989227294921875p-575 | == 1.3690442406036549272130287135951220989227294921875p-575
; [HW: 1.3690442406036549272130287135951220989227294921875p-575] 

; mpf : + 1662027504465848 -575
; mpfd: + 1662027504465848 -575 (1.10706e-173) class: Pos. norm. non-zero
; hwf : + 1662027504465848 -575 (1.10706e-173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000000 #b0101111001111001101011101111000000101011011110111000)))
(assert (= r (fp #b0 #b00111000000 #b0101111001111001101011101111000000101011011110111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
