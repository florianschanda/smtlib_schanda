(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9332571530591422526157430183957330882549285888671875p-344 {- 4203016566758003 -344 (-5.39475e-104)}
; Y = 1.56229731738650112760069532669149339199066162109375p-29 {+ 2532361989053276 -29 (2.91001e-009)}
; -1.9332571530591422526157430183957330882549285888671875p-344 > 1.56229731738650112760069532669149339199066162109375p-29 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100111 #b1110111011101001111100001101011100100101101001110011)))
(assert (= y (fp #b0 #b01111100010 #b1000111111110010101101111000110011001101101101011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
