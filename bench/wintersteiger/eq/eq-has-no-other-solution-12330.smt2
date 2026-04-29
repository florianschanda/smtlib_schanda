(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5467493939418057724566324395709671080112457275390625p-739 {+ 2462340366821361 -739 (5.34876e-223)}
; Y = 1.2841891477316529357466379224206320941448211669921875p-625 {+ 1279874139827011 -625 (9.2232e-189)}
; 1.5467493939418057724566324395709671080112457275390625p-739 = 1.2841891477316529357466379224206320941448211669921875p-625 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011100 #b1000101111110111110001001010111000010110011111110001)))
(assert (= y (fp #b0 #b00110001110 #b0100100011000000100111101011011101100010101101000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
