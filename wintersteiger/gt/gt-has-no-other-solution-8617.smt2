(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.812730283162113043005092549719847738742828369140625p-477 {- 3660211800401610 -477 (-4.64542e-144)}
; Y = 1.8209111403045745714024405970121733844280242919921875p-162 {+ 3697055105579971 -162 (3.11479e-049)}
; -1.812730283162113043005092549719847738742828369140625p-477 > 1.8209111403045745714024405970121733844280242919921875p-162 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100010 #b1101000000001111000101111000001010100110011011001010)))
(assert (= y (fp #b0 #b01101011101 #b1101001000100111001110111000010010000111101111000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
