(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.380466374836377685397792447474785149097442626953125p800 {+ 1713468223940114 800 (9.20497e+240)}
; Y = -1.4616736532615195454098966365563683211803436279296875p-569 {- 2079193292795355 -569 (-7.56455e-172)}
; 1.380466374836377685397792447474785149097442626953125p800 > -1.4616736532615195454098966365563683211803436279296875p-569 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011111 #b0110000101100110001111101000110100100110011000010010)))
(assert (= y (fp #b1 #b00111000110 #b0111011000110000001111101001101000101110110111011011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
