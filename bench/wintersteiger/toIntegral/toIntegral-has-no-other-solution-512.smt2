(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.760243112287418032479990870342589914798736572265625 45 {- 3423830597208602 45 (-6.1933e+013)}
; -1.760243112287418032479990870342589914798736572265625 45 I == -1.7602431122874122593202628195285797119140625 45
; [HW: -1.7602431122874122593202628195285797119140625 45] 

; mpf : - 3423830597208576 45
; mpfd: - 3423830597208576 45 (-6.1933e+013) class: Neg. norm. non-zero
; hwf : - 3423830597208576 45 (-6.1933e+013) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101100 #b1100001010011111010010101110100001001000101000011010)))
(assert (= r (fp #b1 #b10000101100 #b1100001010011111010010101110100001001000101000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
