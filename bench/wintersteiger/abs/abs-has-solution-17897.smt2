(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.01796172522184935615996437263675034046173095703125p746 {- 80892419016052 746 (-3.76798e+224)}
; -1.01796172522184935615996437263675034046173095703125p746 | == 1.01796172522184935615996437263675034046173095703125p746
; [HW: 1.01796172522184935615996437263675034046173095703125p746] 

; mpf : + 80892419016052 746
; mpfd: + 80892419016052 746 (3.76798e+224) class: Pos. norm. non-zero
; hwf : + 80892419016052 746 (3.76798e+224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101001 #b0000010010011001001000111011111001101000010101110100)))
(assert (= r (fp #b0 #b11011101001 #b0000010010011001001000111011111001101000010101110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
