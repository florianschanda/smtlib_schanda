(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4542040827536766300909221172332763671875p584 {+ 2045553337839616 584 (9.20752e+175)}
; Y = 1.3139932136630825265655175826395861804485321044921875p703 {+ 1414099720049923 703 (5.52943e+211)}
; 1.4542040827536766300909221172332763671875p584 = 1.3139932136630825265655175826395861804485321044921875p703 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000111 #b0111010001000110101110000000000100100011000000000000)))
(assert (= y (fp #b0 #b11010111110 #b0101000001100001110110111111011111011001010100000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
