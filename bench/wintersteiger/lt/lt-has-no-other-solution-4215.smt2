(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.172702886294808788392174392356537282466888427734375p-368 {+ 777784654363110 -368 (1.95052e-111)}
; Y = 1.3803664936673307739312122066621668636798858642578125p-884 {+ 1713018399144413 -884 (1.07023e-266)}
; 1.172702886294808788392174392356537282466888427734375p-368 < 1.3803664936673307739312122066621668636798858642578125p-884 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010001111 #b0010110000110110010000011010000010001111100111100110)))
(assert (= y (fp #b0 #b00010001011 #b0110000101011111101100101101001011001011100111011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
