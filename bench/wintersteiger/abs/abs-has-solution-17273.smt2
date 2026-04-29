(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.591789459186851996008726928266696631908416748046875p148 {+ 2665182787875694 148 (5.67969e+044)}
; 1.591789459186851996008726928266696631908416748046875p148 | == 1.591789459186851996008726928266696631908416748046875p148
; [HW: 1.591789459186851996008726928266696631908416748046875p148] 

; mpf : + 2665182787875694 148
; mpfd: + 2665182787875694 148 (5.67969e+044) class: Pos. norm. non-zero
; hwf : + 2665182787875694 148 (5.67969e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010011 #b1001011101111111100000111001010101010011001101101110)))
(assert (= r (fp #b0 #b10010010011 #b1001011101111111100000111001010101010011001101101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
