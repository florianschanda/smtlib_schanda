(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.250425440966937085107701932429336011409759521484375p981 {- 1127815922622790 981 (-2.55555e+295)}
; Y = 1.7852846956409138545751602578093297779560089111328125p-361 {+ 3536607862668173 -361 (3.80084e-109)}
; -1.250425440966937085107701932429336011409759521484375p981 = 1.7852846956409138545751602578093297779560089111328125p-361 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010100 #b0100000000011011111000011011011100001010000101000110)))
(assert (= y (fp #b0 #b01010010110 #b1100100100001000011010101111010111010011101110001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
