(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.050512182759586021774111941340379416942596435546875p-490 {+ 227486647453742 -490 (3.28627e-148)}
; 1.050512182759586021774111941340379416942596435546875p-490 S == 1.024944965722348388936779883806593716144561767578125p-245
; [HW: 1.024944965722348388936779883806593716144561767578125p-245] 

; mpf : + 112342138331938 -245
; mpfd: + 112342138331938 -245 (1.81281e-074) class: Pos. norm. non-zero
; hwf : + 112342138331938 -245 (1.81281e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010101 #b0000110011101110010111011100110100000000100000101110)))
(assert (= r (fp #b0 #b01100001010 #b0000011001100010110010110001001111111010001100100010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
