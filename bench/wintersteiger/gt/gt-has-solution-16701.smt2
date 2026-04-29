(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0992848424146079988616975242621265351772308349609375p353 {- 447139179301967 353 (-2.01697e+106)}
; Y = -1.1373313647755416422313601287896744906902313232421875p-917 {- 618485483229411 -917 (-1.02655e-276)}
; -1.0992848424146079988616975242621265351772308349609375p353 > -1.1373313647755416422313601287896744906902313232421875p-917 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100000 #b0001100101101010101110110011111100101000110001001111)))
(assert (= y (fp #b1 #b00001101010 #b0010001100101000001001011111100001101101000011100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
