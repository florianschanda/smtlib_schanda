(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7902711198256844316034630537615157663822174072265625p-407 {+ 3559064720768617 -407 (5.4164e-123)}
; Y = -1.9875607301744062649362376760109327733516693115234375p-204 {- 4447578136419191 -204 (-7.73039e-062)}
; 1.7902711198256844316034630537615157663822174072265625p-407 = -1.9875607301744062649362376760109327733516693115234375p-204 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101000 #b1100101001001111001101010100011010011111111001101001)))
(assert (= y (fp #b1 #b01100110011 #b1111110011010000110001111010111011101001101101110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
