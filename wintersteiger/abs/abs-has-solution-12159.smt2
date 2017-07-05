(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.07028186332512387224369376781396567821502685546875p558 {- 316521373481932 558 (-1.0098e+168)}
; -1.07028186332512387224369376781396567821502685546875p558 | == 1.07028186332512387224369376781396567821502685546875p558
; [HW: 1.07028186332512387224369376781396567821502685546875p558] 

; mpf : + 316521373481932 558
; mpfd: + 316521373481932 558 (1.0098e+168) class: Pos. norm. non-zero
; hwf : + 316521373481932 558 (1.0098e+168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101101 #b0001000111111101111111100000000001111011101111001100)))
(assert (= r (fp #b0 #b11000101101 #b0001000111111101111111100000000001111011101111001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
