(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7370062799590055835352586655062623322010040283203125p-559 {+ 3319181207793093 -559 (9.20521e-169)}
; 1.7370062799590055835352586655062623322010040283203125p-559 S == 1.863870317355263761527339738677255809307098388671875p-280
; [HW: 1.863870317355263761527339738677255809307098388671875p-280] 

; mpf : + 3890526039337598 -280
; mpfd: + 3890526039337598 -280 (9.59438e-085) class: Pos. norm. non-zero
; hwf : + 3890526039337598 -280 (9.59438e-085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111010000 #b1011110010101100011100011000110101011110110111000101)))
(assert (= r (fp #b0 #b01011100111 #b1101110100100110100110101110100100000110101001111110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
