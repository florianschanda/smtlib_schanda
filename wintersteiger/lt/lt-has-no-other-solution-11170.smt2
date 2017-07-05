(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.368900084588323462497783111757598817348480224609375p-817 {- 1661378283488918 -817 (-1.56627e-246)}
; Y = 1.792082245648536353854751723702065646648406982421875p677 {+ 3567221306349534 677 (1.12374e+204)}
; -1.368900084588323462497783111757598817348480224609375p-817 < 1.792082245648536353854751723702065646648406982421875p677 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001110 #b0101111001110000001111000110011011001100011010010110)))
(assert (= y (fp #b0 #b11010100100 #b1100101011000101111001101110110011001101011111011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
