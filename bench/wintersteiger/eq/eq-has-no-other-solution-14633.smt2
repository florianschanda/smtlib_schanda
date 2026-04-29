(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7691522986175642895290138767450116574764251708984375p-787 {- 3463954005445223 -787 (-2.17349e-237)}
; Y = 1.135504477108160159559702151454985141754150390625p-238 {+ 610257912611344 -238 (2.57069e-072)}
; -1.7691522986175642895290138767450116574764251708984375p-787 = 1.135504477108160159559702151454985141754150390625p-238 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101100 #b1100010011100111001010100100000000110100101001100111)))
(assert (= y (fp #b0 #b01100010001 #b0010001010110000011010111110000110100100001000010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
