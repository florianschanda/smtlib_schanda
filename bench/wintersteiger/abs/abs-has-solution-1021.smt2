(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.333578658507128533727836838806979358196258544921875p284 {- 1502304722151454 284 (-4.14512e+085)}
; -1.333578658507128533727836838806979358196258544921875p284 | == 1.333578658507128533727836838806979358196258544921875p284
; [HW: 1.333578658507128533727836838806979358196258544921875p284] 

; mpf : + 1502304722151454 284
; mpfd: + 1502304722151454 284 (4.14512e+085) class: Pos. norm. non-zero
; hwf : + 1502304722151454 284 (4.14512e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011011 #b0101010101100101011010010011010011101110100000011110)))
(assert (= r (fp #b0 #b10100011011 #b0101010101100101011010010011010011101110100000011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
