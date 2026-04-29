(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.758210048575401085457770022912882268428802490234375p-963 {- 3414674492232742 -963 (-2.2552e-290)}
; Y = -1.682402002598754275908277122653089463710784912109375p-925 {- 3073265404620630 -925 (-5.93176e-279)}
; -1.758210048575401085457770022912882268428802490234375p-963 < -1.682402002598754275908277122653089463710784912109375p-925 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111100 #b1100001000011010000011011100001000100001010000100110)))
(assert (= y (fp #b1 #b00001100010 #b1010111010110001111001011100101111100010111101010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
