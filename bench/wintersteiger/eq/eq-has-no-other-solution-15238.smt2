(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.531920394920689876272490437258966267108917236328125p-422 {+ 2395556492355586 -422 (1.41442e-127)}
; Y = -1.4423902762183942183327189923147670924663543701171875p-307 {- 1992348683129491 -307 (-5.5319e-093)}
; 1.531920394920689876272490437258966267108917236328125p-422 = -1.4423902762183942183327189923147670924663543701171875p-307 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001011001 #b1000100000101011111011110101110001000010100000000010)))
(assert (= y (fp #b1 #b01011001100 #b0111000101000000011111010011100001101101001010010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
