(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8635077938860529211950733952107839286327362060546875p878 {+ 3888893378776747 878 (3.7555e+264)}
; Y = 1.1744924524819480016191164395422674715518951416015625p-436 {+ 785844143976665 -436 (6.61869e-132)}
; 1.8635077938860529211950733952107839286327362060546875p878 = 1.1744924524819480016191164395422674715518951416015625p-436 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101101 #b1101110100001110110110001100011010010100111010101011)))
(assert (= y (fp #b0 #b01001001011 #b0010110010101011100010011001000011001111000011011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
