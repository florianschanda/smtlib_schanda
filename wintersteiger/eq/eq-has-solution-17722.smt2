(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.02120693134062268114803373464383184909820556640625p-363 {+ 95507528083300 -363 (5.43532e-110)}
; Y = -1.7876990011577162942302265946636907756328582763671875p164 {- 3547480928094003 164 (-4.18036e+049)}
; 1.02120693134062268114803373464383184909820556640625p-363 = -1.7876990011577162942302265946636907756328582763671875p164 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010100 #b0000010101101101110100010100010010001110011101100100)))
(assert (= y (fp #b1 #b10010100011 #b1100100110100110101001000100100100010000011100110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
