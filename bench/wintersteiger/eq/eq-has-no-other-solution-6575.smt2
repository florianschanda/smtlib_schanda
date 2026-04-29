(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7617026134812601156909295241348445415496826171875p-664 {- 3430403606241336 -664 (-2.30152e-200)}
; Y = 1.202145336809035125469335980596952140331268310546875p600 {+ 910381663527854 600 (4.98832e+180)}
; -1.7617026134812601156909295241348445415496826171875p-664 = 1.202145336809035125469335980596952140331268310546875p600 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100111 #b1100001011111110111100010100011000101110000000111000)))
(assert (= y (fp #b0 #b11001010111 #b0011001110111111110010111111101010100010001110101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
