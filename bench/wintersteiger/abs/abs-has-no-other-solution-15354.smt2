(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.430601818652382117846855180687271058559417724609375p71 {+ 1939258190027926 71 (3.37791e+021)}
; 1.430601818652382117846855180687271058559417724609375p71 | == 1.430601818652382117846855180687271058559417724609375p71
; [HW: 1.430601818652382117846855180687271058559417724609375p71] 

; mpf : + 1939258190027926 71
; mpfd: + 1939258190027926 71 (3.37791e+021) class: Pos. norm. non-zero
; hwf : + 1939258190027926 71 (3.37791e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000110 #b0110111000111011111010111011100010110101110010010110)))
(assert (= r (fp #b0 #b10001000110 #b0110111000111011111010111011100010110101110010010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
