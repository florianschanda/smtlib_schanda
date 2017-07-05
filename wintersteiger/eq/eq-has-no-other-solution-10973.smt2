(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.265029939380332368870085701928474009037017822265625p960 {- 1193588736235290 960 (-1.23281e+289)}
; Y = -1.5672157706725691195259742016787640750408172607421875p668 {- 2554512733439651 668 (-1.9194e+201)}
; -1.265029939380332368870085701928474009037017822265625p960 = -1.5672157706725691195259742016787640750408172607421875p668 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111111 #b0100001111011001000000001000101000011001011100011010)))
(assert (= y (fp #b1 #b11010011011 #b1001000100110101000011011000000011010000011010100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
