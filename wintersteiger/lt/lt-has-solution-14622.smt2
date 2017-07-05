(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2952485090730212480281124953762628138065338134765625p265 {- 1329681075442953 265 (-7.67895e+079)}
; Y = -1.4280209681641611307867378855007700622081756591796875p53 {- 1927635072730875 53 (-1.28625e+016)}
; -1.2952485090730212480281124953762628138065338134765625p265 < -1.4280209681641611307867378855007700622081756591796875p53 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100001000 #b0100101110010101011010000000001010101001010100001001)))
(assert (= y (fp #b1 #b10000110100 #b0110110110010010110010000011110001000100011011111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
