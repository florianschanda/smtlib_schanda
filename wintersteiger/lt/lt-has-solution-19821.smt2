(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.622722956571198693609403562732040882110595703125p972 {+ 2804494875169104 972 (6.47739e+292)}
; Y = 1.6009464311478474041194886012817732989788055419921875p64 {+ 2706422123387075 64 (2.95322e+019)}
; 1.622722956571198693609403562732040882110595703125p972 < 1.6009464311478474041194886012817732989788055419921875p64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111001011 #b1001111101101010110001011000110011110001000101010000)))
(assert (= y (fp #b0 #b10000111111 #b1001100111010111101000000001010001101101100011000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
