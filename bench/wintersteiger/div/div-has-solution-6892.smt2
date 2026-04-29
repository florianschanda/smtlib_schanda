(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.599464345111898833096120142727158963680267333984375p-682 {+ 2699747401267846 -682 (7.97109e-206)}
; Y = 1.554306991420030925610262784175574779510498046875p444 {+ 2496376760008112 444 (7.06082e+133)}
; 1.599464345111898833096120142727158963680267333984375p-682 / 1.554306991420030925610262784175574779510498046875p444 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010101 #b1001100101110110011111101100110101011111101010000110)))
(assert (= y (fp #b0 #b10110111011 #b1000110111100111000100000010000000010111110110110000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
