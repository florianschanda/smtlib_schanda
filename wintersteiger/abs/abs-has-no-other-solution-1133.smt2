(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.859628633279629017494016807177104055881500244140625p787 {+ 3871423192515146 787 (1.51368e+237)}
; 1.859628633279629017494016807177104055881500244140625p787 | == 1.859628633279629017494016807177104055881500244140625p787
; [HW: 1.859628633279629017494016807177104055881500244140625p787] 

; mpf : + 3871423192515146 787
; mpfd: + 3871423192515146 787 (1.51368e+237) class: Pos. norm. non-zero
; hwf : + 3871423192515146 787 (1.51368e+237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010010 #b1101110000010000100111110100001010100100001001001010)))
(assert (= r (fp #b0 #b11100010010 #b1101110000010000100111110100001010100100001001001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
