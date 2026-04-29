(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6887485339420396091014708872535265982151031494140625p441 {- 3101847640813345 441 (-9.58944e+132)}
; Y = -1.4540516463110011446957514635869301855564117431640625p800 {- 2044866825133185 800 (-9.69564e+240)}
; -1.6887485339420396091014708872535265982151031494140625p441 > -1.4540516463110011446957514635869301855564117431640625p800 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111000 #b1011000001010001110100101110110001110010111100100001)))
(assert (= y (fp #b1 #b11100011111 #b0111010000111100101110101000101110011001110010000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
