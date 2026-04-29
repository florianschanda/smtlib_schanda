(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.397224367188810045803393222740851342678070068359375p-168 {- 1788939512054006 -168 (-3.73445e-051)}
; Y = -1.0525938016159759325063305368530564010143280029296875p675 {- 236861425359707 675 (-1.65009e+203)}
; -1.397224367188810045803393222740851342678070068359375p-168 = -1.0525938016159759325063305368530564010143280029296875p675 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101010111 #b0110010110110000011111110000001001000000000011110110)))
(assert (= y (fp #b1 #b11010100010 #b0000110101110110110010011001000111101001101101011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
