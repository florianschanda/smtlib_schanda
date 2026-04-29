(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.519820687201508757624424106325022876262664794921875p575 {+ 2341064253180190 575 (1.87949e+173)}
; Y = -1.00320115076679794441361082135699689388275146484375p38 {- 14416701400508 38 (-2.75758e+011)}
; 1.519820687201508757624424106325022876262664794921875p575 < -1.00320115076679794441361082135699689388275146484375p38 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111110 #b1000010100010010111101111111001101010000100100011110)))
(assert (= y (fp #b1 #b10000100101 #b0000000011010001110010100110010111011010010110111100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
