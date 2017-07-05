(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.493202761267024669677994097582995891571044921875p967 {+ 2221187771860272 967 (1.86262e+291)}
; 1.493202761267024669677994097582995891571044921875p967 | == 1.493202761267024669677994097582995891571044921875p967
; [HW: 1.493202761267024669677994097582995891571044921875p967] 

; mpf : + 2221187771860272 967
; mpfd: + 2221187771860272 967 (1.86262e+291) class: Pos. norm. non-zero
; hwf : + 2221187771860272 967 (1.86262e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b0111111001000010100010010100000111110000010100110000)))
(assert (= r (fp #b0 #b11111000110 #b0111111001000010100010010100000111110000010100110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
