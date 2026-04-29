(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.787902073147895176674637696123681962490081787109375p-980 {+ 3548395483033302 -980 (1.74964e-295)}
; Y = 1.2164026841476935913988199899904429912567138671875p388 {+ 974591047689528 388 (7.66859e+116)}
; 1.787902073147895176674637696123681962490081787109375p-980 / 1.2164026841476935913988199899904429912567138671875p388 == +zero
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
(assert (= x (fp #b0 #b00000101011 #b1100100110110011111100110100010010011110111011010110)))
(assert (= y (fp #b0 #b10110000011 #b0011011101100110001010101001001100101110010100111000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
