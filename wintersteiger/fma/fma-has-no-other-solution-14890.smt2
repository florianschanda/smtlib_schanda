(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7245059732450851441853956202976405620574951171875p757 {+ 3262884831134264 757 (1.30729e+228)}
; Y = 1.412376639159880209462016864563338458538055419921875p769 {+ 1857179278456734 769 (4.38548e+231)}
; Z = -1.4095216202365909996530035641626454889774322509765625p399 {- 1844321416297673 399 (-1.81987e+120)}
; 1.7245059732450851441853956202976405620574951171875p757 x 1.412376639159880209462016864563338458538055419921875p769 -1.4095216202365909996530035641626454889774322509765625p399 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110100 #b1011100101111001001110010011010011011000001000111000)))
(assert (= y (fp #b0 #b11100000000 #b0110100110010001100000111111001011010011011110011110)))
(assert (= z (fp #b1 #b10110001110 #b0110100011010110011010001010110111101011110011001001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
