(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8651152009869946812870011854101903736591339111328125p387 {- 3896132496797581 387 (-5.87914e+116)}
; -1.8651152009869946812870011854101903736591339111328125p387 | == 1.8651152009869946812870011854101903736591339111328125p387
; [HW: 1.8651152009869946812870011854101903736591339111328125p387] 

; mpf : + 3896132496797581 387
; mpfd: + 3896132496797581 387 (5.87914e+116) class: Pos. norm. non-zero
; hwf : + 3896132496797581 387 (5.87914e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000010 #b1101110101111000001100001001011110000010111110001101)))
(assert (= r (fp #b0 #b10110000010 #b1101110101111000001100001001011110000010111110001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
