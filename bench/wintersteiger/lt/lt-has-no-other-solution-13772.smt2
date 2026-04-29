(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9796261083389941060062255928642116487026214599609375p-676 {+ 4411843776477903 -676 (6.31402e-204)}
; Y = -1.4770779367235788992473999314825050532817840576171875p-247 {- 2148568018054995 -247 (-6.53122e-075)}
; 1.9796261083389941060062255928642116487026214599609375p-676 < -1.4770779367235788992473999314825050532817840576171875p-247 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011011 #b1111101011001000110001101101000110011111101011001111)))
(assert (= y (fp #b1 #b01100001000 #b0111101000100001110001111001011111011110111101010011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
