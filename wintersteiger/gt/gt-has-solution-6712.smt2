(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1370860623239289477481861467822454869747161865234375p-408 {- 617380739199735 -408 (-1.72011e-123)}
; Y = -1.587828741806212473619552838499657809734344482421875p640 {- 2647345302556126 640 (-7.24437e+192)}
; -1.1370860623239289477481861467822454869747161865234375p-408 > -1.587828741806212473619552838499657809734344482421875p640 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100111 #b0010001100011000000100100111101001101011001011110111)))
(assert (= y (fp #b1 #b11001111111 #b1001011001111011111100011100010110110100110111011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
