(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7643477052299960661230215919204056262969970703125p-906 {- 3442316040455304 -906 (-3.26143e-273)}
; -1.7643477052299960661230215919204056262969970703125p-906 | == 1.7643477052299960661230215919204056262969970703125p-906
; [HW: 1.7643477052299960661230215919204056262969970703125p-906] 

; mpf : + 3442316040455304 -906
; mpfd: + 3442316040455304 -906 (3.26143e-273) class: Pos. norm. non-zero
; hwf : + 3442316040455304 -906 (3.26143e-273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110101 #b1100001110101100010010101000110010111100010010001000)))
(assert (= r (fp #b0 #b00001110101 #b1100001110101100010010101000110010111100010010001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
