(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.874172769308192432191617626813240349292755126953125p380 {- 3936924158113810 380 (-4.61539e+114)}
; Y = 1.0719949386788936163128482803585939109325408935546875p187 {+ 324236379006827 187 (2.10282e+056)}
; -1.874172769308192432191617626813240349292755126953125p380 = 1.0719949386788936163128482803585939109325408935546875p187 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b1101111111001001110010010101111100111011100000010010)))
(assert (= y (fp #b0 #b10010111010 #b0001001001101110010000101010001100011010011101101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
