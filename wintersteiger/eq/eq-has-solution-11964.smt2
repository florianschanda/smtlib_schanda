(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.848207790286319873729325991007499396800994873046875p-110 {- 3819988288266222 -110 (-1.42381e-033)}
; Y = -1.967327369824179328361424268223345279693603515625p-959 {- 4356455182285456 -959 (-4.03748e-289)}
; -1.848207790286319873729325991007499396800994873046875p-110 = -1.967327369824179328361424268223345279693603515625p-959 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010001 #b1101100100100100001001010100111101111101111111101110)))
(assert (= y (fp #b1 #b00001000000 #b1111011110100010110001000011100111101011101010010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
