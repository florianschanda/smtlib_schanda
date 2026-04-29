(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4596648515678050106458840673440136015415191650390625p449 {+ 2070146454236081 449 (2.12188e+135)}
; 1.4596648515678050106458840673440136015415191650390625p449 S == 1.7086046070216507342109935052576474845409393310546875p224
; [HW: 1.7086046070216507342109935052576474845409393310546875p224] 

; mpf : + 3191271444135723 224
; mpfd: + 3191271444135723 224 (4.60639e+067) class: Pos. norm. non-zero
; hwf : + 3191271444135723 224 (4.60639e+067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000000 #b0111010110101100100110001000000010011010101110110001)))
(assert (= r (fp #b0 #b10011011111 #b1011010101100111000111001000110011110011111100101011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
