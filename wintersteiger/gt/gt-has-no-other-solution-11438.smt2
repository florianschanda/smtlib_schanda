(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4896869652211603973768205833039246499538421630859375p687 {- 2205354034098207 687 (-9.56538e+206)}
; Y = 1.841285941462121211742442028480581939220428466796875p579 {+ 3788815052480846 579 (3.64325e+174)}
; -1.4896869652211603973768205833039246499538421630859375p687 > 1.841285941462121211742442028480581939220428466796875p579 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101110 #b0111110101011100000111111111110011100111000000011111)))
(assert (= y (fp #b0 #b11001000010 #b1101011101011110100000111111010100101010000101001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
