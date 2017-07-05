(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1827619196977903204270887727034278213977813720703125p-68 {- 823086513448485 -68 (-4.00735e-021)}
; Y = 1.019586168592760966333798933192156255245208740234375p-518 {+ 88208261575974 -518 (1.18819e-156)}
; -1.1827619196977903204270887727034278213977813720703125p-68 < 1.019586168592760966333798933192156255245208740234375p-518 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111011 #b0010111011001001011111000011010000001110011000100101)))
(assert (= y (fp #b0 #b00111111001 #b0000010100000011100110010110000110001111010100100110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
