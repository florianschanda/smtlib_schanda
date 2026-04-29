(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.5266357426903283123209575933287851512432098388671875p-8 {- 2371756534540147 -8 (-0.00596342)}
; +oo > -1.5266357426903283123209575933287851512432098388671875p-8 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b01111110111 #b1000011011010001100110011001101111000010011101110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
