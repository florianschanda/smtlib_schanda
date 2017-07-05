(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3863496315065051422976694084354676306247711181640625p39 {+ 1739964056487425 39 (7.62154e+011)}
; Y = -1.2508882795597477954885334838763810694217681884765625p-888 {- 1129900362336905 -888 (-6.06153e-268)}
; 1.3863496315065051422976694084354676306247711181640625p39 < -1.2508882795597477954885334838763810694217681884765625p-888 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100110 #b0110001011100111110011110011100000100100011000000001)))
(assert (= y (fp #b1 #b00010000111 #b0100000000111010001101101101101110101000101010001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
