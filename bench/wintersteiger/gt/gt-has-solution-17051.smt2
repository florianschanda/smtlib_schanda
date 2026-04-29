(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7422367553465087919306597541435621678829193115234375p985 {- 3342737174799223 985 (-5.69709e+296)}
; Y = 1.279750292414452150779879957553930580615997314453125p298 {+ 1259883312674514 298 (6.51724e+089)}
; -1.7422367553465087919306597541435621678829193115234375p985 > 1.279750292414452150779879957553930580615997314453125p298 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011000 #b1011111000000011001110100101111000011010001101110111)))
(assert (= y (fp #b0 #b10100101001 #b0100011110011101101101110001010011110111011011010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
