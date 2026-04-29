(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3296219889580915829441210007644258439540863037109375p-674 {- 1484485466644783 -674 (-1.69633e-203)}
; Y = -1.491096907122404946477445264463312923908233642578125p1020 {- 2211703847919266 1020 (-1.67533e+307)}
; -1.3296219889580915829441210007644258439540863037109375p-674 < -1.491096907122404946477445264463312923908233642578125p1020 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011101 #b0101010001100010000110110100111010011110000100101111)))
(assert (= y (fp #b1 #b11111111011 #b0111110110111000100001101110001101000001111010100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
