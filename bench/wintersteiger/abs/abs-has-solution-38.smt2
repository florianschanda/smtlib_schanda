(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6577544975792466441788519659894518554210662841796875p300 {- 2962262910199163 300 (-3.37691e+090)}
; -1.6577544975792466441788519659894518554210662841796875p300 | == 1.6577544975792466441788519659894518554210662841796875p300
; [HW: 1.6577544975792466441788519659894518554210662841796875p300] 

; mpf : + 2962262910199163 300
; mpfd: + 2962262910199163 300 (3.37691e+090) class: Pos. norm. non-zero
; hwf : + 2962262910199163 300 (3.37691e+090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101011 #b1010100001100010100110010100011111100110010101111011)))
(assert (= r (fp #b0 #b10100101011 #b1010100001100010100110010100011111100110010101111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
