(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.462169952479026147074137043091468513011932373046875p-439 {+ 2081428425766382 -439 (1.02998e-132)}
; 1.462169952479026147074137043091468513011932373046875p-439 | == 1.462169952479026147074137043091468513011932373046875p-439
; [HW: 1.462169952479026147074137043091468513011932373046875p-439] 

; mpf : + 2081428425766382 -439
; mpfd: + 2081428425766382 -439 (1.02998e-132) class: Pos. norm. non-zero
; hwf : + 2081428425766382 -439 (1.02998e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001001000 #b0111011001010000110001010001111100010111010111101110)))
(assert (= r (fp #b0 #b01001001000 #b0111011001010000110001010001111100010111010111101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
