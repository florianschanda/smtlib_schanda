(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1819121765983886529483015692676417529582977294921875p-890 {- 819259610742659 -890 (-1.43182e-268)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.1819121765983886529483015692676417529582977294921875p-890 > -oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000101 #b0010111010010001110010111110000100111011111110000011)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
