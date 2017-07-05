(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3638223990779565486519686601241119205951690673828125p823 {+ 1638510420916525 823 (7.62859e+247)}
; Y = -1.413894101092097344007925130426883697509765625p-601 {- 1864013319449216 -601 (-1.70369e-181)}
; 1.3638223990779565486519686601241119205951690673828125p823 > -1.413894101092097344007925130426883697509765625p-601 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100110110 #b0101110100100011011101101111100110010111100100101101)))
(assert (= y (fp #b1 #b00110100110 #b0110100111110100111101101011110000110010101010000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
