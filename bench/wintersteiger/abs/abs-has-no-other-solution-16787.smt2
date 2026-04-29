(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.599817367956781755111705933813937008380889892578125p975 {- 2701337274820514 975 (-5.10877e+293)}
; -1.599817367956781755111705933813937008380889892578125p975 | == 1.599817367956781755111705933813937008380889892578125p975
; [HW: 1.599817367956781755111705933813937008380889892578125p975] 

; mpf : + 2701337274820514 975
; mpfd: + 2701337274820514 975 (5.10877e+293) class: Pos. norm. non-zero
; hwf : + 2701337274820514 975 (5.10877e+293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111001110 #b1001100110001101101000011000101011110010011110100010)))
(assert (= r (fp #b0 #b11111001110 #b1001100110001101101000011000101011110010011110100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
