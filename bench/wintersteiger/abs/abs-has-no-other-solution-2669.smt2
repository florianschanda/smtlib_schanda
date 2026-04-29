(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.104944042672795223580806123209185898303985595703125p760 {+ 472625951475954 760 (6.70096e+228)}
; 1.104944042672795223580806123209185898303985595703125p760 | == 1.104944042672795223580806123209185898303985595703125p760
; [HW: 1.104944042672795223580806123209185898303985595703125p760] 

; mpf : + 472625951475954 760
; mpfd: + 472625951475954 760 (6.70096e+228) class: Pos. norm. non-zero
; hwf : + 472625951475954 760 (6.70096e+228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110111 #b0001101011011101100111001101111100110000100011110010)))
(assert (= r (fp #b0 #b11011110111 #b0001101011011101100111001101111100110000100011110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
