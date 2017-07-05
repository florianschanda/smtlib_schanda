(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4975086687665963847138073106179945170879364013671875p-426 {+ 2240579855270835 -426 (8.64154e-129)}
; 1.4975086687665963847138073106179945170879364013671875p-426 S == 1.2237273670089250376946665710420347750186920166015625p-213
; [HW: 1.2237273670089250376946665710420347750186920166015625p-213] 

; mpf : + 1007578486693977 -213
; mpfd: + 1007578486693977 -213 (9.29599e-065) class: Pos. norm. non-zero
; hwf : + 1007578486693977 -213 (9.29599e-065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010101 #b0111111101011100101110100110010111010100001110110011)))
(assert (= r (fp #b0 #b01100101010 #b0011100101000110001100100101110010000110000001011001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
