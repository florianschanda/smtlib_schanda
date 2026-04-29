(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.869482131987666662098490633070468902587890625p484 {+ 3915799405624960 484 (9.33769e+145)}
; 1.869482131987666662098490633070468902587890625p484 | == 1.869482131987666662098490633070468902587890625p484
; [HW: 1.869482131987666662098490633070468902587890625p484] 

; mpf : + 3915799405624960 484
; mpfd: + 3915799405624960 484 (9.33769e+145) class: Pos. norm. non-zero
; hwf : + 3915799405624960 484 (9.33769e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100011 #b1101111010010110011000011000100101010111111010000000)))
(assert (= r (fp #b0 #b10111100011 #b1101111010010110011000011000100101010111111010000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
