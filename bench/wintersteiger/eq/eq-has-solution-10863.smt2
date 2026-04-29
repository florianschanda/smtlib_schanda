(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0313420075995167746185643409262411296367645263671875p780 {+ 141151853746227 780 (6.55842e+234)}
; Y = 1.63413616218781054811870490084402263164520263671875p981 {+ 2855895383731180 981 (3.33975e+295)}
; 1.0313420075995167746185643409262411296367645263671875p780 = 1.63413616218781054811870490084402263164520263671875p981 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001011 #b0000100000000110000001111010000110100001100000110011)))
(assert (= y (fp #b0 #b11111010100 #b1010001001010110101111110101110111001110101111101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
