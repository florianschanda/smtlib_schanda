(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6701836233220677119248875897028483450412750244140625p988 {- 3018238716263073 988 (-4.36918e+297)}
; -1.6701836233220677119248875897028483450412750244140625p988 | == 1.6701836233220677119248875897028483450412750244140625p988
; [HW: 1.6701836233220677119248875897028483450412750244140625p988] 

; mpf : + 3018238716263073 988
; mpfd: + 3018238716263073 988 (4.36918e+297) class: Pos. norm. non-zero
; hwf : + 3018238716263073 988 (4.36918e+297) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011011 #b1010101110010001001001110110100001111011101010100001)))
(assert (= r (fp #b0 #b11111011011 #b1010101110010001001001110110100001111011101010100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
