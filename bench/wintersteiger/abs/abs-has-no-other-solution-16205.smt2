(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3303144922148206763523603513021953403949737548828125p-115 {+ 1487604224053741 -115 (3.20262e-035)}
; 1.3303144922148206763523603513021953403949737548828125p-115 | == 1.3303144922148206763523603513021953403949737548828125p-115
; [HW: 1.3303144922148206763523603513021953403949737548828125p-115] 

; mpf : + 1487604224053741 -115
; mpfd: + 1487604224053741 -115 (3.20262e-035) class: Pos. norm. non-zero
; hwf : + 1487604224053741 -115 (3.20262e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001100 #b0101010010001111011111011001010101110101000111101101)))
(assert (= r (fp #b0 #b01110001100 #b0101010010001111011111011001010101110101000111101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
