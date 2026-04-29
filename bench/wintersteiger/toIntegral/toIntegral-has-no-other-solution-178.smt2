(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9292176312762652212740022150683216750621795654296875 263 {- 4184824177961883 263 (-2.85937e+079)}
; -1.9292176312762652212740022150683216750621795654296875 263 I == -1.9292176312762652212740022150683216750621795654296875 263
; [HW: -1.9292176312762652212740022150683216750621795654296875 263] 

; mpf : - 4184824177961883 263
; mpfd: - 4184824177961883 263 (-2.85937e+079) class: Neg. norm. non-zero
; hwf : - 4184824177961883 263 (-2.85937e+079) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000110 #b1110110111100001001101001110100100110010101110011011)))
(assert (= r (fp #b1 #b10100000110 #b1110110111100001001101001110100100110010101110011011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
