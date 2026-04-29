(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.723144491227306840386290787137113511562347412109375p368 {+ 3256753261226326 368 (1.036e+111)}
; 1.723144491227306840386290787137113511562347412109375p368 | == 1.723144491227306840386290787137113511562347412109375p368
; [HW: 1.723144491227306840386290787137113511562347412109375p368] 

; mpf : + 3256753261226326 368
; mpfd: + 3256753261226326 368 (1.036e+111) class: Pos. norm. non-zero
; hwf : + 3256753261226326 368 (1.036e+111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101111 #b1011100100011111111111110101010000011010100101010110)))
(assert (= r (fp #b0 #b10101101111 #b1011100100011111111111110101010000011010100101010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
