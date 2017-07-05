(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5275131414304630173006671611801721155643463134765625p975 {- 2375707987179273 975 (-4.87788e+293)}
; Y = -1.59960473534029024023084275540895760059356689453125p-50 {- 2700379662648116 -50 (-1.42073e-015)}
; -1.5275131414304630173006671611801721155643463134765625p975 = -1.59960473534029024023084275540895760059356689453125p-50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001110 #b1000011100001011000110011110101010100111011100001001)))
(assert (= y (fp #b1 #b01111001101 #b1001100101111111101100100010100011010000001100110100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
