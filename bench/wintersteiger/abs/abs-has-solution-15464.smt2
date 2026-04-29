(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2253425181128851928491485523409210145473480224609375p654 {- 1014852480603919 654 (-9.15956e+196)}
; -1.2253425181128851928491485523409210145473480224609375p654 | == 1.2253425181128851928491485523409210145473480224609375p654
; [HW: 1.2253425181128851928491485523409210145473480224609375p654] 

; mpf : + 1014852480603919 654
; mpfd: + 1014852480603919 654 (9.15956e+196) class: Pos. norm. non-zero
; hwf : + 1014852480603919 654 (9.15956e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010001101 #b0011100110110000000011000001100110110001011100001111)))
(assert (= r (fp #b0 #b11010001101 #b0011100110110000000011000001100110110001011100001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
