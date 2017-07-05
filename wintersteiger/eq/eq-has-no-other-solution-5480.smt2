(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2565013467854526663103342798422090709209442138671875p-81 {+ 1155179369802995 -81 (5.19677e-025)}
; Y = 1.9994077584309970507803200234775431454181671142578125p-384 {+ 4500932408461021 -384 (5.07438e-116)}
; 1.2565013467854526663103342798422090709209442138671875p-81 = 1.9994077584309970507803200234775431454181671142578125p-384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101110 #b0100000110101010000100100111111111010010110011110011)))
(assert (= y (fp #b0 #b01001111111 #b1111111111011001001011111101010111010100011011011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
