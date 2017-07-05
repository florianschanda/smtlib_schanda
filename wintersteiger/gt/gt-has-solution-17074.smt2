(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4011178988595680561246581419254653155803680419921875p316 {- 1806474419835587 316 (-1.87048e+095)}
; Y = -1.9846507742136145768796495758579112589359283447265625p198 {- 4434472859838505 198 (-7.97303e+059)}
; -1.4011178988595680561246581419254653155803680419921875p316 > -1.9846507742136145768796495758579112589359283447265625p198 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111011 #b0110011010101111101010011010000101110001001011000011)))
(assert (= y (fp #b1 #b10011000101 #b1111110000010010000100101011100100111010100000101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
