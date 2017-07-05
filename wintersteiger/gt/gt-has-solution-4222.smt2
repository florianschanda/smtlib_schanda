(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0462120273733876985033930395729839801788330078125p117 {+ 208120469258824 117 (1.73832e+035)}
; Y = 1.065284338752360948632258441648446023464202880859375p319 {+ 294014523678262 319 (1.13772e+096)}
; 1.0462120273733876985033930395729839801788330078125p117 > 1.065284338752360948632258441648446023464202880859375p319 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110100 #b0000101111010100100011010010101001000000001001001000)))
(assert (= y (fp #b0 #b10100111110 #b0001000010110110011110010111001111100001111000110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
