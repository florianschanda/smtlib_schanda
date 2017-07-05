(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.21423697690561738227188470773398876190185546875p940 {- 964837569361120 940 (-1.12849e+283)}
; Y = -1.1462207699563560225897163036279380321502685546875p-52 {- 658519805089272 -52 (-2.54512e-016)}
; -1.21423697690561738227188470773398876190185546875p940 > -1.1462207699563560225897163036279380321502685546875p-52 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101011 #b0011011011011000001111000000100101100111010011100000)))
(assert (= y (fp #b1 #b01111001011 #b0010010101101110101110010111000011110101010111111000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
