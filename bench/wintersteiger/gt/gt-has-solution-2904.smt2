(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1179435890817053245172019160236231982707977294921875p-141 {- 531170703839107 -141 (-4.01043e-043)}
; Y = 1.181004745593901450462226421223022043704986572265625p629 {+ 815172904808986 629 (2.63099e+189)}
; -1.1179435890817053245172019160236231982707977294921875p-141 > 1.181004745593901450462226421223022043704986572265625p629 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110010 #b0001111000110001100011010001000111100000111110000011)))
(assert (= y (fp #b0 #b11001110100 #b0010111001010110010100111011011010111111001000011010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
