(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6302438466136823791430288110859692096710205078125p-496 {+ 2838365952761928 -496 (7.96847e-150)}
; Y = -1.051757522592243088155328223365359008312225341796875p-1010 {- 233095159460046 -1010 (-9.58562e-305)}
; 1.6302438466136823791430288110859692096710205078125p-496 > -1.051757522592243088155328223365359008312225341796875p-1010 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000001111 #b1010000101010111101010010010010110110110000001001000)))
(assert (= y (fp #b1 #b00000001101 #b0000110100111111111110110010001011011011000011001110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
