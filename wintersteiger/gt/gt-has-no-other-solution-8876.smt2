(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2306593892551698221637934693717397749423980712890625p-961 {- 1038797539499089 -961 (-6.31411e-290)}
; Y = 1.251231247580161909382923113298602402210235595703125p402 {+ 1131444952985842 402 (1.2924e+121)}
; -1.2306593892551698221637934693717397749423980712890625p-961 > 1.251231247580161909382923113298602402210235595703125p402 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111110 #b0011101100001100011111100110010101011101110001010001)))
(assert (= y (fp #b0 #b10110010001 #b0100000001010000101100001110100000010111000011110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
