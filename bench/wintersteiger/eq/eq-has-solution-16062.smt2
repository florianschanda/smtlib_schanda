(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9528953769325443357018912138300947844982147216796875p-357 {- 4291459264476475 -357 (-6.65228e-108)}
; Y = 1.014620063035241326332425160217098891735076904296875p-805 {+ 65842910437646 -805 (4.75507e-243)}
; -1.9528953769325443357018912138300947844982147216796875p-357 = 1.014620063035241326332425160217098891735076904296875p-805 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011010 #b1111001111110000111100111001000001101111010100111011)))
(assert (= y (fp #b0 #b00011011010 #b0000001110111110001000111111010010011010000100001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
