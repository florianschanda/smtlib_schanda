(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1388288868203890746855222459998913109302520751953125p10 {+ 625229722952565 10 (1166.16)}
; Y = 1.9204796034860527331744606271968223154544830322265625p-579 {+ 4145471599261929 -579 (9.70604e-175)}
; 1.1388288868203890746855222459998913109302520751953125p10 > 1.9204796034860527331744606271968223154544830322265625p-579 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001001 #b0010001110001010010010100011100010100010001101110101)))
(assert (= y (fp #b0 #b00110111100 #b1110101110100100100011010010000110011011100011101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
