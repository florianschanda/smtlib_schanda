(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.459556191722920726050460871192626655101776123046875p285 {+ 2069657093799150 285 (9.07339e+085)}
; Y = 0.4897904977623344091597346050548367202281951904296875p-1022 {+ 2205820303212059 -1023 (1.08982e-308)}
; 1.459556191722920726050460871192626655101776123046875p285 = 0.4897904977623344091597346050548367202281951904296875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100011100 #b0111010110100101011110010111111000011111110011101110)))
(assert (= y (fp #b0 #b00000000000 #b0111110101100010111010001111100111000111111000011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
