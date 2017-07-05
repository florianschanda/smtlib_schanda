(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.971168631856741182417636082391254603862762451171875p-99 {- 4373754688543934 -99 (-3.10996e-030)}
; Y = -1.17083084838473450162155131692998111248016357421875p-50 {- 769353745128876 -50 (-1.03991e-015)}
; -1.971168631856741182417636082391254603862762451171875p-99 > -1.17083084838473450162155131692998111248016357421875p-50 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011100 #b1111100010011110100000011110100010111001110010111110)))
(assert (= y (fp #b1 #b01111001101 #b0010101110111011100100100000101011110101110110101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
