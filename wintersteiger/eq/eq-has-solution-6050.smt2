(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.20681098514553042377883684821426868438720703125p324 {+ 931393875637536 324 (4.12437e+097)}
; Y = 1.049019476702971243042838977999053895473480224609375p159 {+ 220764097013398 159 (7.66572e+047)}
; 1.20681098514553042377883684821426868438720703125p324 = 1.049019476702971243042838977999053895473480224609375p159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000011 #b0011010011110001100100001001000110100111010100100000)))
(assert (= y (fp #b0 #b10010011110 #b0000110010001100100010100101100101001110011010010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
