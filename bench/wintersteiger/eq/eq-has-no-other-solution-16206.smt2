(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4068535932127594900720168880070559680461883544921875p184 {+ 1832305690787331 184 (3.44959e+055)}
; Y = -1.2121707819073612721894050991977564990520477294921875p1006 {- 955532254336899 1006 (-8.31265e+302)}
; 1.4068535932127594900720168880070559680461883544921875p184 = -1.2121707819073612721894050991977564990520477294921875p1006 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010110111 #b0110100000100111100011101001110100011011111000000011)))
(assert (= y (fp #b1 #b11111101101 #b0011011001010000110100110000100101110101011110000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
