(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3672433132513364117954779430874623358249664306640625p-658 {+ 1653916848713025 -658 (1.14316e-198)}
; Y = 1.91690812938935639664350674138404428958892822265625p-485 {+ 4129387109850884 -485 (1.9189e-146)}
; 1.3672433132513364117954779430874623358249664306640625p-658 = 1.91690812938935639664350674138404428958892822265625p-485 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101101 #b0101111000000011101010000110010000010110110101000001)))
(assert (= y (fp #b0 #b01000011010 #b1110101010111010011111011011110100101001111100000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
