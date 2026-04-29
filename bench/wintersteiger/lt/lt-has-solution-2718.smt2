(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2552799211562344350312514507095329463481903076171875p317 {+ 1149678557794387 317 (3.35158e+095)}
; Y = -1.1187265313004159938969905851990915834903717041015625p648 {- 534696762123545 648 (-1.30666e+195)}
; 1.2552799211562344350312514507095329463481903076171875p317 < -1.1187265313004159938969905851990915834903717041015625p648 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100111100 #b0100000101011010000001100110000010110001000001010011)))
(assert (= y (fp #b1 #b11010000111 #b0001111001100100110111001010100100011010010100011001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
