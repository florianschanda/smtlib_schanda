(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7243595428642388700524179512285627424716949462890625p27 {+ 3262225367325649 27 (2.3144e+008)}
; Y = 1.871592960807842320747340636444278061389923095703125p921 {+ 3925305733512946 921 (3.3177e+277)}
; 1.7243595428642388700524179512285627424716949462890625p27 > 1.871592960807842320747340636444278061389923095703125p921 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000011010 #b1011100101101111101000001000001100100101101111010001)))
(assert (= y (fp #b0 #b11110011000 #b1101111100100000101101110101111000010111111011110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
