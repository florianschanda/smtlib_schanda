(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7539948577565025455982095081708393990993499755859375p773 {+ 3395690960431455 773 (8.71395e+232)}
; 1.7539948577565025455982095081708393990993499755859375p773 S == 1.8729628174400592133252985149738378822803497314453125p386
; [HW: 1.8729628174400592133252985149738378822803497314453125p386] 

; mpf : + 3931475019331349 386
; mpfd: + 3931475019331349 386 (2.95194e+116) class: Pos. norm. non-zero
; hwf : + 3931475019331349 386 (2.95194e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000100 #b1100000100000101110011101001011101101010100101011111)))
(assert (= r (fp #b0 #b10110000001 #b1101111101111010011111011011111110000111011100010101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
