(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.249406741147559340987527320976369082927703857421875p-993 {- 1123228106495838 -993 (-1.49251e-299)}
; Y = -1.8756727599130551542572220569127239286899566650390625p-964 {- 3943679515242929 -964 (-1.20293e-290)}
; -1.249406741147559340987527320976369082927703857421875p-993 < -1.8756727599130551542572220569127239286899566650390625p-964 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011110 #b0011111111011001000111101100010010100001011101011110)))
(assert (= y (fp #b1 #b00000111011 #b1110000000101100000101110000100111010011000110110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
