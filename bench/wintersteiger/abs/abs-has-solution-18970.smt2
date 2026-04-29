(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.32862086473910157025102307670749723911285400390625p-9 {- 1479976803985188 -9 (-0.00259496)}
; -1.32862086473910157025102307670749723911285400390625p-9 | == 1.32862086473910157025102307670749723911285400390625p-9
; [HW: 1.32862086473910157025102307670749723911285400390625p-9] 

; mpf : + 1479976803985188 -9
; mpfd: + 1479976803985188 -9 (0.00259496) class: Pos. norm. non-zero
; hwf : + 1479976803985188 -9 (0.00259496) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111110110 #b0101010000100000011111110011101011010110011100100100)))
(assert (= r (fp #b0 #b01111110110 #b0101010000100000011111110011101011010110011100100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
