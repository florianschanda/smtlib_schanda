(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2550848615264680319114631856791675090789794921875p-271 {- 1148800087318456 -271 (-3.30784e-082)}
; Y = 1.3933093147901194353011078419513069093227386474609375p-944 {+ 1771307683530127 -944 (9.36983e-285)}
; -1.2550848615264680319114631856791675090789794921875p-271 = 1.3933093147901194353011078419513069093227386474609375p-944 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011110000 #b0100000101001101001111011101000111110101111110111000)))
(assert (= y (fp #b0 #b00001001111 #b0110010010101111111010110101010000111100010110001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
