(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.474863847261920657416567337349988520145416259765625p931 {+ 2138596645580506 931 (2.67718e+280)}
; 1.474863847261920657416567337349988520145416259765625p931 | == 1.474863847261920657416567337349988520145416259765625p931
; [HW: 1.474863847261920657416567337349988520145416259765625p931] 

; mpf : + 2138596645580506 931
; mpfd: + 2138596645580506 931 (2.67718e+280) class: Pos. norm. non-zero
; hwf : + 2138596645580506 931 (2.67718e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100010 #b0111100110010000101011010101011000001010111011011010)))
(assert (= r (fp #b0 #b11110100010 #b0111100110010000101011010101011000001010111011011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
