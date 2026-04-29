(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5343559044853858353008035919629037380218505859375p415 {+ 2406525052323608 415 (1.2983e+125)}
; Y = 1.9445601158956022924684248209814541041851043701171875p-806 {+ 4253920585976467 -806 (4.55664e-243)}
; 1.5343559044853858353008035919629037380218505859375p415 = 1.9445601158956022924684248209814541041851043701171875p-806 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011110 #b1000100011001011100011000110111000110000011100011000)))
(assert (= y (fp #b0 #b00011011001 #b1111000111001110101100010001011011100000101010010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
