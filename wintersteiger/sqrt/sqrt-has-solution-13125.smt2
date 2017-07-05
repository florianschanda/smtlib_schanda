(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0508835843805373055914742508321069180965423583984375p1016 {+ 229159291655463 1016 (7.37956e+305)}
; 1.0508835843805373055914742508321069180965423583984375p1016 S == 1.025126130961715897882413628394715487957000732421875p508
; [HW: 1.025126130961715897882413628394715487957000732421875p508] 

; mpf : + 113158034036446 508
; mpfd: + 113158034036446 508 (8.59043e+152) class: Pos. norm. non-zero
; hwf : + 113158034036446 508 (8.59043e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110111 #b0000110100000110101101001110001011010001010100100111)))
(assert (= r (fp #b0 #b10111111011 #b0000011001101110101010101000011011000001011011011110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
