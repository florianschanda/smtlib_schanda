(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7695997418995321748269589079427532851696014404296875p-591 {- 3465969110843163 -591 (-2.18347e-178)}
; Y = 1.26226388909649589464834207319654524326324462890625p-180 {+ 1181131553207716 -180 (8.23666e-055)}
; -1.7695997418995321748269589079427532851696014404296875p-591 = 1.26226388909649589464834207319654524326324462890625p-180 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110110000 #b1100010100000100011111010001101001110111111100011011)))
(assert (= y (fp #b0 #b01101001011 #b0100001100100011101110011110101010010111010110100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
