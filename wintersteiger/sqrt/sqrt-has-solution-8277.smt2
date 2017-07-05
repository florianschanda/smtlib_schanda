(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.21130410561237855660010609426535665988922119140625p-758 {+ 951629091297764 -758 (7.98944e-229)}
; 1.21130410561237855660010609426535665988922119140625p-758 S == 1.10059261564503430008699069730937480926513671875p-379
; [HW: 1.10059261564503430008699069730937480926513671875p-379] 

; mpf : + 453028866335200 -379
; mpfd: + 453028866335200 -379 (8.93837e-115) class: Pos. norm. non-zero
; hwf : + 453028866335200 -379 (8.93837e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001001 #b0011011000011000000001101001111100011101100111100100)))
(assert (= r (fp #b0 #b01010000100 #b0001100111000000011100000000101001101010000111100000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
