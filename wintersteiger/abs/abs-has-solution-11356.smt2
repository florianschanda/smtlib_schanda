(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6374564101872952637251046326127834618091583251953125p17 {- 2870848451384437 17 (-214625)}
; -1.6374564101872952637251046326127834618091583251953125p17 | == 1.6374564101872952637251046326127834618091583251953125p17
; [HW: 1.6374564101872952637251046326127834618091583251953125p17] 

; mpf : + 2870848451384437 17
; mpfd: + 2870848451384437 17 (214625) class: Pos. norm. non-zero
; hwf : + 2870848451384437 17 (214625) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000010000 #b1010001100110000010101111110001001100001010001110101)))
(assert (= r (fp #b0 #b10000010000 #b1010001100110000010101111110001001100001010001110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
