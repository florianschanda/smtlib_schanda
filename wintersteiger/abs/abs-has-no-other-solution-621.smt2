(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.139914648258952833970170104294084012508392333984375p600 {- 630119557762694 600 (-4.73009e+180)}
; -1.139914648258952833970170104294084012508392333984375p600 | == 1.139914648258952833970170104294084012508392333984375p600
; [HW: 1.139914648258952833970170104294084012508392333984375p600] 

; mpf : + 630119557762694 600
; mpfd: + 630119557762694 600 (4.73009e+180) class: Pos. norm. non-zero
; hwf : + 630119557762694 600 (4.73009e+180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010111 #b0010001111010001011100100100011010000000111010000110)))
(assert (= r (fp #b0 #b11001010111 #b0010001111010001011100100100011010000000111010000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
