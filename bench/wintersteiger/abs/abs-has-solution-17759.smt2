(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.521518929414963139379324275068938732147216796875p-366 {+ 2348712456179888 -366 (1.01228e-110)}
; 1.521518929414963139379324275068938732147216796875p-366 | == 1.521518929414963139379324275068938732147216796875p-366
; [HW: 1.521518929414963139379324275068938732147216796875p-366] 

; mpf : + 2348712456179888 -366
; mpfd: + 2348712456179888 -366 (1.01228e-110) class: Pos. norm. non-zero
; hwf : + 2348712456179888 -366 (1.01228e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010001 #b1000010110000010010000111011101000010101000010110000)))
(assert (= r (fp #b0 #b01010010001 #b1000010110000010010000111011101000010101000010110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
