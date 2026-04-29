(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.510925466231142433315426387707702815532684326171875p355 {+ 2301003739332670 355 (1.1089e+107)}
; +oo < 1.510925466231142433315426387707702815532684326171875p355 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10101100010 #b1000001011001100000000101110100000101000000000111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
