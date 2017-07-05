(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4584358080229182785814145972835831344127655029296875p-1018 {- 2064611334185307 -1018 (-5.1922e-307)}
; Y = -1.6478044676422316516806176878162659704685211181640625p-148 {- 2917451959082497 -148 (-4.61813e-045)}
; -1.4584358080229182785814145972835831344127655029296875p-1018 > -1.6478044676422316516806176878162659704685211181640625p-148 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000101 #b0111010101011100000011001001001011000110000101011011)))
(assert (= y (fp #b1 #b01101101011 #b1010010111010110100000110111101010111001111000000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
