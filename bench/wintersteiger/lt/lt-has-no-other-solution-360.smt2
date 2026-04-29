(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7062007098254377002177761823986656963825225830078125p-625 {+ 3180445253618621 -625 (1.22541e-188)}
; Y = 1.3475917218023436561225025798194110393524169921875p94 {+ 1565413948786104 94 (2.66918e+028)}
; 1.7062007098254377002177761823986656963825225830078125p-625 < 1.3475917218023436561225025798194110393524169921875p94 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110001110 #b1011010011001001100100011101100100011100101110111101)))
(assert (= y (fp #b0 #b10001011101 #b0101100011111011110001010110010110000000010110111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
