(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.77912281598205535004808552912436425685882568359375p900 {+ 3508857223732636 900 (1.50384e+271)}
; 1.77912281598205535004808552912436425685882568359375p900 | == 1.77912281598205535004808552912436425685882568359375p900
; [HW: 1.77912281598205535004808552912436425685882568359375p900] 

; mpf : + 3508857223732636 900
; mpfd: + 3508857223732636 900 (1.50384e+271) class: Pos. norm. non-zero
; hwf : + 3508857223732636 900 (1.50384e+271) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000011 #b1100011101110100100101111100011000110101110110011100)))
(assert (= r (fp #b0 #b11110000011 #b1100011101110100100101111100011000110101110110011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
