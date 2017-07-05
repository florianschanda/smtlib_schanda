(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1548782462141586879766919082612730562686920166015625p559 {+ 697509611937881 559 (2.17923e+168)}
; Y = -1.28015661509761802250295659177936613559722900390625p-904 {- 1261713227359012 -904 (-9.46558e-273)}
; 1.1548782462141586879766919082612730562686920166015625p559 = -1.28015661509761802250295659177936613559722900390625p-904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101110 #b0010011110100110000110011100101001011010000001011001)))
(assert (= y (fp #b1 #b00001110111 #b0100011110111000010110000000101110011010001100100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
