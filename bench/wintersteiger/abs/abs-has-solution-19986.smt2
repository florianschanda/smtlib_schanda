(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.13096403085223951023863264708779752254486083984375p-971 {- 589809560545084 -971 (-5.66661e-293)}
; -1.13096403085223951023863264708779752254486083984375p-971 | == 1.13096403085223951023863264708779752254486083984375p-971
; [HW: 1.13096403085223951023863264708779752254486083984375p-971] 

; mpf : + 589809560545084 -971
; mpfd: + 589809560545084 -971 (5.66661e-293) class: Pos. norm. non-zero
; hwf : + 589809560545084 -971 (5.66661e-293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110100 #b0010000110000110110110111101010101110110011100111100)))
(assert (= r (fp #b0 #b00000110100 #b0010000110000110110110111101010101110110011100111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
