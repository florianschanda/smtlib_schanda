(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4383550002590534955260181959602050483226776123046875p-658 {+ 1974175415822667 -658 (1.20262e-198)}
; Y = 1.074230934600168385628649048157967627048492431640625p-941 {+ 334306409404682 -941 (5.77925e-284)}
; 1.4383550002590534955260181959602050483226776123046875p-658 < 1.074230934600168385628649048157967627048492431640625p-941 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101101 #b0111000000111000000010001000011000100110100101001011)))
(assert (= y (fp #b0 #b00001010010 #b0001001100000000110011000110110001110101100100001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
