(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5252656690226589208947416409500874578952789306640625p724 {- 2365586271280961 724 (-1.34605e+218)}
; Y = -1.6885946950077055372929635268519632518291473388671875p-280 {- 3101154811846003 -280 (-8.69214e-085)}
; -1.5252656690226589208947416409500874578952789306640625p724 > -1.6885946950077055372929635268519632518291473388671875p-280 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010011 #b1000011001110111110011111001011000101001111101000001)))
(assert (= y (fp #b1 #b01011100111 #b1011000001000111101111011110111101000001110101110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
