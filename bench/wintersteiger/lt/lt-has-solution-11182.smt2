(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7024359634011239084117050879285670816898345947265625p145 {- 3163490343024937 145 (-7.59312e+043)}
; Y = 1.0077427880805973625655269643175415694713592529296875p784 {+ 34870417514587 784 (1.02534e+236)}
; -1.7024359634011239084117050879285670816898345947265625p145 < 1.0077427880805973625655269643175415694713592529296875p784 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010010000 #b1011001111010010110101111110001001010111100100101001)))
(assert (= y (fp #b0 #b11100001111 #b0000000111111011011011100110110110010110000001011011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
