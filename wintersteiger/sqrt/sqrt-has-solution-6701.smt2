(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1462689723254069207314387313090264797210693359375p-815 {+ 658736889260568 -815 (5.24614e-246)}
; 1.1462689723254069207314387313090264797210693359375p-815 S == 1.5141129233484580396407181979157030582427978515625p-408
; [HW: 1.5141129233484580396407181979157030582427978515625p-408] 

; mpf : + 2315358770018472 -408
; mpfd: + 2315358770018472 -408 (2.29045e-123) class: Pos. norm. non-zero
; hwf : + 2315358770018472 -408 (2.29045e-123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010000 #b0010010101110001111000100010010010001110101000011000)))
(assert (= r (fp #b0 #b01001100111 #b1000001110011100111001111001000000111011100010101000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
