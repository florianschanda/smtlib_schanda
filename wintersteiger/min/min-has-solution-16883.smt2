(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2817791052204727808572215508320368826389312744140625p-422 {- 1269020273271713 -422 (-1.18346e-127)}
; Y = -1.28540601254159714272873316076584160327911376953125p108 {- 1285354411731636 108 (-4.17138e+032)}
; -1.2817791052204727808572215508320368826389312744140625p-422 m -1.28540601254159714272873316076584160327911376953125p108 == -1.28540601254159714272873316076584160327911376953125p108
; [HW: -1.28540601254159714272873316076584160327911376953125p108] 

; mpf : - 1285354411731636 108
; mpfd: - 1285354411731636 108 (-4.17138e+032) class: Neg. norm. non-zero
; hwf : - 1285354411731636 108 (-4.17138e+032) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001011001 #b0100100000100010101011001110100110011110001110100001)))
(assert (= y (fp #b1 #b10001101011 #b0100100100010000010111100101000111110010101010110100)))
(assert (= r (fp #b1 #b10001101011 #b0100100100010000010111100101000111110010101010110100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
