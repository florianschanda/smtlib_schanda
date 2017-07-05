(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5847589183977828231064677311223931610584259033203125p605 {+ 2633520046997829 605 (2.10431e+182)}
; 1.5847589183977828231064677311223931610584259033203125p605 | == 1.5847589183977828231064677311223931610584259033203125p605
; [HW: 1.5847589183977828231064677311223931610584259033203125p605] 

; mpf : + 2633520046997829 605
; mpfd: + 2633520046997829 605 (2.10431e+182) class: Pos. norm. non-zero
; hwf : + 2633520046997829 605 (2.10431e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011100 #b1001010110110010110000101010111010010000000101000101)))
(assert (= r (fp #b0 #b11001011100 #b1001010110110010110000101010111010010000000101000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
