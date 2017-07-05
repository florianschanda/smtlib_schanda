(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6889307812622023075022070770501159131526947021484375p-48 {- 3102668409776519 -48 (-6.00029e-015)}
; Y = -1.918114454115948941392844062647782266139984130859375p886 {- 4134819913440054 886 (-9.89579e+266)}
; -1.6889307812622023075022070770501159131526947021484375p-48 = -1.918114454115948941392844062647782266139984130859375p886 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001111 #b1011000001011101110001001000011010111010100110000111)))
(assert (= y (fp #b1 #b11101110101 #b1110101100001001100011001000001001101001101100110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
