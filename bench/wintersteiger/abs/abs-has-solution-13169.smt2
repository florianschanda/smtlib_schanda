(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1672102175464409423710776536609046161174774169921875p333 {- 753047873434691 333 (-2.04239e+100)}
; -1.1672102175464409423710776536609046161174774169921875p333 | == 1.1672102175464409423710776536609046161174774169921875p333
; [HW: 1.1672102175464409423710776536609046161174774169921875p333] 

; mpf : + 753047873434691 333
; mpfd: + 753047873434691 333 (2.04239e+100) class: Pos. norm. non-zero
; hwf : + 753047873434691 333 (2.04239e+100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101001100 #b0010101011001110010010011110111111101011010001000011)))
(assert (= r (fp #b0 #b10101001100 #b0010101011001110010010011110111111101011010001000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
