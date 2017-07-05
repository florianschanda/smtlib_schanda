(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5532655366792333939685022414778359234333038330078125p814 {+ 2491686464825533 814 (1.69692e+245)}
; Y = 1.9706179168975366255978087792755104601383209228515625p707 {+ 4371274488858873 707 (1.32681e+213)}
; 1.5532655366792333939685022414778359234333038330078125p814 = 1.9706179168975366255978087792755104601383209228515625p707 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101101 #b1000110110100010110011110110101000001010100010111101)))
(assert (= y (fp #b0 #b11011000010 #b1111100001111010011010100111000111111100100011111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
