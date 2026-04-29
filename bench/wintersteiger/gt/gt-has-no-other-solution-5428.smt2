(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8769494646609388155411579646170139312744140625p-881 {+ 3949429282269760 -881 (1.1642e-265)}
; Y = -1.3100256369802216749320677990908734500408172607421875p798 {- 1396231343179427 798 (-2.18382e+240)}
; 1.8769494646609388155411579646170139312744140625p-881 > -1.3100256369802216749320677990908734500408172607421875p798 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010001110 #b1110000001111111110000101001011011110110101001000000)))
(assert (= y (fp #b1 #b11100011101 #b0100111101011101110101110001001111000000011010100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
