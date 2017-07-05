(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5943755561156141009604425562429241836071014404296875p-862 {+ 2676829533040411 -862 (5.18483e-260)}
; Y = 1.5299211890018999948637201669043861329555511474609375p-390 {+ 2386552869324687 -390 (6.06695e-118)}
; 1.5943755561156141009604425562429241836071014404296875p-862 > 1.5299211890018999948637201669043861329555511474609375p-390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100001 #b1001100000101000111111110001011100001110111100011011)))
(assert (= y (fp #b0 #b01001111001 #b1000011110101000111010100100000000111000011110001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
