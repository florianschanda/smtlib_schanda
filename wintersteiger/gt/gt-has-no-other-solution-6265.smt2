(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6282316836979493501758042839355766773223876953125p-26 {- 2829303976604424 -26 (-2.42625e-008)}
; Y = 1.3960103465325117699791235281736589968204498291015625p-647 {+ 1783472049078681 -647 (2.39046e-195)}
; -1.6282316836979493501758042839355766773223876953125p-26 > 1.3960103465325117699791235281736589968204498291015625p-647 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100101 #b1010000011010011110010101010011111001011001100001000)))
(assert (= y (fp #b0 #b00101111000 #b0110010101100000111011110001111100111100000110011001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
