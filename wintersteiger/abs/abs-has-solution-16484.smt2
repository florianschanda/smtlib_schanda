(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.778614345627371751135115118813700973987579345703125p393 {+ 3506567276832754 393 (3.58815e+118)}
; 1.778614345627371751135115118813700973987579345703125p393 | == 1.778614345627371751135115118813700973987579345703125p393
; [HW: 1.778614345627371751135115118813700973987579345703125p393] 

; mpf : + 3506567276832754 393
; mpfd: + 3506567276832754 393 (3.58815e+118) class: Pos. norm. non-zero
; hwf : + 3506567276832754 393 (3.58815e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001000 #b1100011101010011010001010000111010101010011111110010)))
(assert (= r (fp #b0 #b10110001000 #b1100011101010011010001010000111010101010011111110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
