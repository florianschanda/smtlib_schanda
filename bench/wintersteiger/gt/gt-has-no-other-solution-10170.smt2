(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3229380639361945082299598652753047645092010498046875p146 {+ 1454383744406795 146 (1.1801e+044)}
; Y = 1.643220154375873764962534551159478724002838134765625p211 {+ 2896806047564378 211 (5.40785e+063)}
; 1.3229380639361945082299598652753047645092010498046875p146 > 1.643220154375873764962534551159478724002838134765625p211 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010001 #b0101001010101100000100011010011100111101010100001011)))
(assert (= y (fp #b0 #b10011010010 #b1010010010101010000100110111011100101100001001011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
