(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8939692250120343519625976114184595644474029541015625p482 {+ 4026079468644889 482 (2.365e+145)}
; Y = -1.1728289717906570377436992203001864254474639892578125p881 {- 778352492955229 881 (-1.89087e+265)}
; 1.8939692250120343519625976114184595644474029541015625p482 = -1.1728289717906570377436992203001864254474639892578125p881 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100001 #b1110010011011011001010101100100100001110101000011001)))
(assert (= y (fp #b1 #b11101110000 #b0010110000111110100001001111110110100100011001011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
