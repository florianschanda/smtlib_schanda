(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3227722199236147115897210824186913669109344482421875p570 {+ 1453636849373539 570 (5.1119e+171)}
; Y = 1.321757267379243927507559419609606266021728515625p466 {+ 1449065909472912 466 (2.51843e+140)}
; 1.3227722199236147115897210824186913669109344482421875p570 < 1.321757267379243927507559419609606266021728515625p466 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111001 #b0101001010100001001100110100000010100001000101100011)))
(assert (= y (fp #b0 #b10111010001 #b0101001001011110101011110010110010100100111010010000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
