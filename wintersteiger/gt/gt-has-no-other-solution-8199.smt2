(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8758097371057453894849231801345013082027435302734375p-304 {- 3944296405676887 -304 (-5.75533e-092)}
; Y = -1.7379435594499199613238715755869634449481964111328125p-926 {- 3323402339359117 -926 (-3.06379e-279)}
; -1.8758097371057453894849231801345013082027435302734375p-304 > -1.7379435594499199613238715755869634449481964111328125p-926 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001111 #b1110000000110101000100010010001001100011001101010111)))
(assert (= y (fp #b1 #b00001100001 #b1011110011101001110111100111111000100001100110001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
