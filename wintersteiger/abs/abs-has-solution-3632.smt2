(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.58113450930244159309268070501275360584259033203125p150 {- 2617197159546612 150 (-2.25667e+045)}
; -1.58113450930244159309268070501275360584259033203125p150 | == 1.58113450930244159309268070501275360584259033203125p150
; [HW: 1.58113450930244159309268070501275360584259033203125p150] 

; mpf : + 2617197159546612 150
; mpfd: + 2617197159546612 150 (2.25667e+045) class: Pos. norm. non-zero
; hwf : + 2617197159546612 150 (2.25667e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010101 #b1001010011000101001110110011000000000111111011110100)))
(assert (= r (fp #b0 #b10010010101 #b1001010011000101001110110011000000000111111011110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
