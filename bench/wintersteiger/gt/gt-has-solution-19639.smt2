(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0712446499242711528410154642187990248203277587890625p376 {- 320857378851089 376 (-1.6488e+113)}
; Y = -1.658266182589138271197271023993380367755889892578125p-431 {- 2964567334619042 -431 (-2.99038e-130)}
; -1.0712446499242711528410154642187990248203277587890625p376 > -1.658266182589138271197271023993380367755889892578125p-431 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110111 #b0001001000111101000101101110000101110000100100010001)))
(assert (= y (fp #b1 #b01001010000 #b1010100010000100001000011110111001001000011110100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
