(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6826426383150347998451934472541324794292449951171875p925 {+ 3074349131542803 925 (4.77241e+278)}
; 1.6826426383150347998451934472541324794292449951171875p925 | == 1.6826426383150347998451934472541324794292449951171875p925
; [HW: 1.6826426383150347998451934472541324794292449951171875p925] 

; mpf : + 3074349131542803 925
; mpfd: + 3074349131542803 925 (4.77241e+278) class: Pos. norm. non-zero
; hwf : + 3074349131542803 925 (4.77241e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011100 #b1010111011000001101010101111111001101011000100010011)))
(assert (= r (fp #b0 #b11110011100 #b1010111011000001101010101111111001101011000100010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
