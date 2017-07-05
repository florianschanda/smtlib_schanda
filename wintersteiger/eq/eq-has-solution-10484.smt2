(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8631452032753477165982758378959260880947113037109375p-413 {- 3887260415837487 -413 (-8.80762e-125)}
; Y = -1.25049303625450303201205315417610108852386474609375p-956 {- 1128120344734684 -956 (-2.05308e-288)}
; -1.8631452032753477165982758378959260880947113037109375p-413 = -1.25049303625450303201205315417610108852386474609375p-956 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100010 #b1101110011110111000101011000001111000100010100101111)))
(assert (= y (fp #b1 #b00001000011 #b0100000000100000010011111100011010010110101111011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
