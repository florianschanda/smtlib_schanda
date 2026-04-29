(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.06907307939511309058389088022522628307342529296875p-130 {+ 311077494625164 -130 (7.85431e-040)}
; 1.06907307939511309058389088022522628307342529296875p-130 | == 1.06907307939511309058389088022522628307342529296875p-130
; [HW: 1.06907307939511309058389088022522628307342529296875p-130] 

; mpf : + 311077494625164 -130
; mpfd: + 311077494625164 -130 (7.85431e-040) class: Pos. norm. non-zero
; hwf : + 311077494625164 -130 (7.85431e-040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111101 #b0001000110101110110001011111100100001001001110001100)))
(assert (= r (fp #b0 #b01101111101 #b0001000110101110110001011111100100001001001110001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
