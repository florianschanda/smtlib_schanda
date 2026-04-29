(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6704334058168768262220282849739305675029754638671875p-711 {- 3019363636613619 -711 (-1.55061e-214)}
; Y = 1.4015721461052503826749671134166419506072998046875p564 {+ 1808520167561976 564 (8.46317e+169)}
; -1.6704334058168768262220282849739305675029754638671875p-711 < 1.4015721461052503826749671134166419506072998046875p564 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111000 #b1010101110100001100001100001000000100001000111110011)))
(assert (= y (fp #b0 #b11000110011 #b0110011011001101011011101010001010000001101011111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
