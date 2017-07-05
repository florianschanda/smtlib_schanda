(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7412968948915639177954517435864545404911041259765625p-549 {+ 3338504419604553 -549 (9.44942e-166)}
; 1.7412968948915639177954517435864545404911041259765625p-549 | == 1.7412968948915639177954517435864545404911041259765625p-549
; [HW: 1.7412968948915639177954517435864545404911041259765625p-549] 

; mpf : + 3338504419604553 -549
; mpfd: + 3338504419604553 -549 (9.44942e-166) class: Pos. norm. non-zero
; hwf : + 3338504419604553 -549 (9.44942e-166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011010 #b1011110111000101101000100010000000101111100001001001)))
(assert (= r (fp #b0 #b00111011010 #b1011110111000101101000100010000000101111100001001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
