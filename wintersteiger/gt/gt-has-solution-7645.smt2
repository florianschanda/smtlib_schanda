(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.073506600660172782824020032421685755252838134765625p-822 {- 331044299342426 -822 (-3.83838e-248)}
; Y = 1.6772504925540074882661656374693848192691802978515625p-368 {+ 3050065065902713 -368 (2.78971e-111)}
; -1.073506600660172782824020032421685755252838134765625p-822 > 1.6772504925540074882661656374693848192691802978515625p-368 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001001 #b0001001011010001010101000001110111100000001001011010)))
(assert (= y (fp #b0 #b01010001111 #b1010110101100000010010011100110010111000001001111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
