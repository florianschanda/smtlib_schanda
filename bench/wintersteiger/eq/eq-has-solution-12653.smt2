(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8028726074248189181759016719297505915164947509765625p-487 {- 3615816775624393 -487 (-4.51188e-147)}
; Y = -1.3300666194388706120577126057469286024570465087890625p-280 {- 1486487904312337 -280 (-6.84659e-085)}
; -1.8028726074248189181759016719297505915164947509765625p-487 = -1.3300666194388706120577126057469286024570465087890625p-280 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000011000 #b1100110110001001000011110010011110111110011011001001)))
(assert (= y (fp #b1 #b01011100111 #b0101010001111111001111101111011111111101110000010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
