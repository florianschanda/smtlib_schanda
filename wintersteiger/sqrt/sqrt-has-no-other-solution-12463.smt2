(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9785509468742912275729395332746207714080810546875p-740 {+ 4407001679706104 -740 (3.42098e-223)}
; 1.9785509468742912275729395332746207714080810546875p-740 S == 1.40660973509864906105804038816131651401519775390625p-370
; [HW: 1.40660973509864906105804038816131651401519775390625p-370] 

; mpf : + 1831207451475492 -370
; mpfd: + 1831207451475492 -370 (5.84891e-112) class: Pos. norm. non-zero
; hwf : + 1831207451475492 -370 (5.84891e-112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011011 #b1111101010000010010100001001101001001011011111111000)))
(assert (= r (fp #b0 #b01010001101 #b0110100000010111100100110101101001111011111000100100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
