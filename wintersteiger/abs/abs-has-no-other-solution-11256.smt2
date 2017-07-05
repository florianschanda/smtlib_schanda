(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3547953629006637132903279052698053419589996337890625p314 {+ 1597856264152209 314 (4.5216e+094)}
; 1.3547953629006637132903279052698053419589996337890625p314 | == 1.3547953629006637132903279052698053419589996337890625p314
; [HW: 1.3547953629006637132903279052698053419589996337890625p314] 

; mpf : + 1597856264152209 314
; mpfd: + 1597856264152209 314 (4.5216e+094) class: Pos. norm. non-zero
; hwf : + 1597856264152209 314 (4.5216e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111001 #b0101101011010011110111100111000001101110010010010001)))
(assert (= r (fp #b0 #b10100111001 #b0101101011010011110111100111000001101110010010010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
