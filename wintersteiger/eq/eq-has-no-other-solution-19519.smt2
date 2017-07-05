(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0718775679950380830263156894943676888942718505859375p274 {+ 323707788438751 274 (3.2536e+082)}
; Y = -1.0970376449532246443396843460504896938800811767578125p782 {- 437018701652253 782 (-2.79048e+235)}
; 1.0718775679950380830263156894943676888942718505859375p274 = -1.0970376449532246443396843460504896938800811767578125p782 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010001 #b0001001001100110100100010111101111011010110011011111)))
(assert (= y (fp #b1 #b11100001101 #b0001100011010111011101011000011110001110000100011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
