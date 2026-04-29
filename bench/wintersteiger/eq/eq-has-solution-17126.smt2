(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1589262715446977392019789476762525737285614013671875p748 {+ 715740297308083 748 (1.7159e+225)}
; Y = -1.645147772198394253706510426127351820468902587890625p152 {- 2905487266471594 152 (-9.39213e+045)}
; 1.1589262715446977392019789476762525737285614013671875p748 = -1.645147772198394253706510426127351820468902587890625p152 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101011 #b0010100010101111011001000110001011000010011110110011)))
(assert (= y (fp #b1 #b10010010111 #b1010010100101000011001111000011010101101111010101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
