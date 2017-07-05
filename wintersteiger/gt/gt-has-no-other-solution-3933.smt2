(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.918698152997797112817579545662738382816314697265625p420 {- 4137448659506842 420 (-5.19523e+126)}
; Y = -1.7449105074514168478572173626162111759185791015625p985 {- 3354778683782568 985 (-5.70583e+296)}
; -1.918698152997797112817579545662738382816314697265625p420 > -1.7449105074514168478572173626162111759185791015625p985 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110100011 #b1110101100101111110011010101101000000101011010011010)))
(assert (= y (fp #b1 #b11111011000 #b1011111010110010011101000111101111110011010110101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
