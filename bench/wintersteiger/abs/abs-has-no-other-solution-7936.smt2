(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7122408176462637907633279610308818519115447998046875p782 {+ 3207647480949771 782 (4.35533e+235)}
; 1.7122408176462637907633279610308818519115447998046875p782 | == 1.7122408176462637907633279610308818519115447998046875p782
; [HW: 1.7122408176462637907633279610308818519115447998046875p782] 

; mpf : + 3207647480949771 782
; mpfd: + 3207647480949771 782 (4.35533e+235) class: Pos. norm. non-zero
; hwf : + 3207647480949771 782 (4.35533e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001101 #b1011011001010101011010100000101010101010110000001011)))
(assert (= r (fp #b0 #b11100001101 #b1011011001010101011010100000101010101010110000001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
