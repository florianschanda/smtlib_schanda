(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.35305533529901111933213542215526103973388671875p-504 {- 1590019876493792 -504 (-2.58344e-152)}
; Y = -1.8169443766830537523304656133404932916164398193359375p-355 {- 3679190390412223 -355 (-2.47567e-107)}
; -1.35305533529901111933213542215526103973388671875p-504 < -1.8169443766830537523304656133404932916164398193359375p-355 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000111 #b0101101001100001110101011001111011001001100111100000)))
(assert (= y (fp #b1 #b01010011100 #b1101000100100011010001000100010010000001001110111111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
