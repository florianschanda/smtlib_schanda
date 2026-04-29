(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.613412611486879644218106477637775242328643798828125p484 {+ 2762564808516674 484 (8.05867e+145)}
; 1.613412611486879644218106477637775242328643798828125p484 | == 1.613412611486879644218106477637775242328643798828125p484
; [HW: 1.613412611486879644218106477637775242328643798828125p484] 

; mpf : + 2762564808516674 484
; mpfd: + 2762564808516674 484 (8.05867e+145) class: Pos. norm. non-zero
; hwf : + 2762564808516674 484 (8.05867e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100011 #b1001110100001000100110111110000101001010010001000010)))
(assert (= r (fp #b0 #b10111100011 #b1001110100001000100110111110000101001010010001000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
