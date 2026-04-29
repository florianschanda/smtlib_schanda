(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8821593944430634604003671483951620757579803466796875p639 {- 3972892720095163 639 (-4.29362e+192)}
; Y = 1.3544257853738368435614347617956809699535369873046875p-655 {+ 1596191834940107 -655 (9.05958e-198)}
; -1.8821593944430634604003671483951620757579803466796875p639 = 1.3544257853738368435614347617956809699535369873046875p-655 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111110 #b1110000111010101001100101011010011111101111110111011)))
(assert (= y (fp #b0 #b00101110000 #b0101101010111011101001011111010100001010001011001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
