(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1124969804882549606617203608038835227489471435546875p-769 {+ 506641359407211 -769 (3.58288e-232)}
; 1.1124969804882549606617203608038835227489471435546875p-769 S == 1.491641364730983188024993069120682775974273681640625p-385
; [HW: 1.491641364730983188024993069120682775974273681640625p-385] 

; mpf : + 2214155867002378 -385
; mpfd: + 2214155867002378 -385 (1.89285e-116) class: Pos. norm. non-zero
; hwf : + 2214155867002378 -385 (1.89285e-116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011111110 #b0001110011001100100110100010010000011000100001101011)))
(assert (= r (fp #b0 #b01001111110 #b0111110111011100001101010101111011100001011000001010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
