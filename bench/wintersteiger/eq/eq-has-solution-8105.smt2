(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.76681018376913012701834304607473313808441162109375p-447 {+ 3453406057886556 -447 (4.86163e-135)}
; Y = -1.056928794487124623202589646098203957080841064453125p145 {- 256384497638866 145 (-4.71406e+043)}
; 1.76681018376913012701834304607473313808441162109375p-447 = -1.056928794487124623202589646098203957080841064453125p145 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000000 #b1100010001001101101011000001010110000111001101011100)))
(assert (= y (fp #b1 #b10010010000 #b0000111010010010111000101010111010000101110111010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
