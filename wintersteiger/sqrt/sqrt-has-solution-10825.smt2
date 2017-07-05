(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1532262299182125531160636455751955509185791015625p159 {+ 690069591963048 159 (8.42721e+047)}
; 1.1532262299182125531160636455751955509185791015625p159 S == 1.5187009119100525200707352269091643393039703369140625p79
; [HW: 1.5187009119100525200707352269091643393039703369140625p79] 

; mpf : + 2336021233594849 79
; mpfd: + 2336021233594849 79 (9.17998e+023) class: Pos. norm. non-zero
; hwf : + 2336021233594849 79 (9.17998e+023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011110 #b0010011100111001110101011000111001100011010110101000)))
(assert (= r (fp #b0 #b10001001110 #b1000010011001001100101010011110100001111000111100001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
