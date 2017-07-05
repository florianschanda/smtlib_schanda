(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.30820905920108998543582856655120849609375p559 {- 1388050204170240 559 (-2.46857e+168)}
; -1.30820905920108998543582856655120849609375p559 | == 1.30820905920108998543582856655120849609375p559
; [HW: 1.30820905920108998543582856655120849609375p559] 

; mpf : + 1388050204170240 559
; mpfd: + 1388050204170240 559 (2.46857e+168) class: Pos. norm. non-zero
; hwf : + 1388050204170240 559 (2.46857e+168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101110 #b0100111011100110110010011111010110011001100000000000)))
(assert (= r (fp #b0 #b11000101110 #b0100111011100110110010011111010110011001100000000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
