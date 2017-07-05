(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3175241132583750403028943765093572437763214111328125p-631 {- 1430001478151565 -631 (-1.47853e-190)}
; -1.3175241132583750403028943765093572437763214111328125p-631 | == 1.3175241132583750403028943765093572437763214111328125p-631
; [HW: 1.3175241132583750403028943765093572437763214111328125p-631] 

; mpf : + 1430001478151565 -631
; mpfd: + 1430001478151565 -631 (1.47853e-190) class: Pos. norm. non-zero
; hwf : + 1430001478151565 -631 (1.47853e-190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001000 #b0101000101001001010000101010001000100010110110001101)))
(assert (= r (fp #b0 #b00110001000 #b0101000101001001010000101010001000100010110110001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
