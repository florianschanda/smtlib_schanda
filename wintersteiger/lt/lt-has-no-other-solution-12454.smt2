(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3082248489471839381081963438191451132297515869140625p-1008 {+ 1388121314864865 -1008 (4.76921e-304)}
; Y = 1.4639012398204573894844315873342566192150115966796875p-669 {+ 2089225450792123 -669 (5.97647e-202)}
; 1.3082248489471839381081963438191451132297515869140625p-1008 < 1.4639012398204573894844315873342566192150115966796875p-669 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001111 #b0100111011100111110100101101111000001010111011100001)))
(assert (= y (fp #b0 #b00101100010 #b0111011011000010001110110100110110011010010010111011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
