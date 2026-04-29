(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.36985205249801378357688008691184222698211669921875p954 {- 1665665565812268 954 (-2.08588e+287)}
; -1.36985205249801378357688008691184222698211669921875p954 | == 1.36985205249801378357688008691184222698211669921875p954
; [HW: 1.36985205249801378357688008691184222698211669921875p954] 

; mpf : + 1665665565812268 954
; mpfd: + 1665665565812268 954 (2.08588e+287) class: Pos. norm. non-zero
; hwf : + 1665665565812268 954 (2.08588e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111001 #b0101111010101110100111111100010111010110011000101100)))
(assert (= r (fp #b0 #b11110111001 #b0101111010101110100111111100010111010110011000101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
