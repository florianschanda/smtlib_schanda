(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.98884983098134338064255643985234200954437255859375p-486 {- 4453383730332956 -486 (-9.95461e-147)}
; -1.98884983098134338064255643985234200954437255859375p-486 | == 1.98884983098134338064255643985234200954437255859375p-486
; [HW: 1.98884983098134338064255643985234200954437255859375p-486] 

; mpf : + 4453383730332956 -486
; mpfd: + 4453383730332956 -486 (9.95461e-147) class: Pos. norm. non-zero
; hwf : + 4453383730332956 -486 (9.95461e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011001 #b1111110100100101010000110011010010111000010100011100)))
(assert (= r (fp #b0 #b01000011001 #b1111110100100101010000110011010010111000010100011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
