(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3370840939632007149384662625379860401153564453125p394 {- 1518091799965192 394 (-5.39482e+118)}
; Y = -1.0393120248894074375556328959646634757518768310546875p869 {- 177045620643115 869 (-4.09084e+261)}
; -1.3370840939632007149384662625379860401153564453125p394 < -1.0393120248894074375556328959646634757518768310546875p869 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001001 #b0101011001001011001001001010011110010010111000001000)))
(assert (= y (fp #b1 #b11101100100 #b0000101000010000010110100101010100111101010100101011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
