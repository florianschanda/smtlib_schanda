(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7065520531352529332025369512848556041717529296875 414 {+ 3182027563217784 414 (7.22001e+124)}
; 1.7065520531352529332025369512848556041717529296875 414 I == 1.7065520531352529332025369512848556041717529296875 414
; [HW: 1.7065520531352529332025369512848556041717529296875 414] 

; mpf : + 3182027563217784 414
; mpfd: + 3182027563217784 414 (7.22001e+124) class: Pos. norm. non-zero
; hwf : + 3182027563217784 414 (7.22001e+124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011101 #b1011010011100000100110000110100100100011001101111000)))
(assert (= r (fp #b0 #b10110011101 #b1011010011100000100110000110100100100011001101111000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
