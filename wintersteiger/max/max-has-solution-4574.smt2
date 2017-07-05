(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.554737403476309953731515633990056812763214111328125p-1022 {+ 2498315163584386 -1023 (1.23433e-308)}
; Y = 1.23082128035147508882118927431292831897735595703125p221 {+ 1039526632180084 221 (4.14786e+066)}
; 0.554737403476309953731515633990056812763214111328125p-1022 M 1.23082128035147508882118927431292831897735595703125p221 == 1.23082128035147508882118927431292831897735595703125p221
; [HW: 1.23082128035147508882118927431292831897735595703125p221] 

; mpf : + 1039526632180084 221
; mpfd: + 1039526632180084 221 (4.14786e+066) class: Pos. norm. non-zero
; hwf : + 1039526632180084 221 (4.14786e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1000111000000011010001010011110111001100011110000010)))
(assert (= y (fp #b0 #b10011011100 #b0011101100010111000110100111101001010100100101110100)))
(assert (= r (fp #b0 #b10011011100 #b0011101100010111000110100111101001010100100101110100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
