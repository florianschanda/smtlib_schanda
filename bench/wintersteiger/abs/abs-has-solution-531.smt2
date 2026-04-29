(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5792564529770161119159865847905166447162628173828125p651 {+ 2608739145779245 651 (1.47564e+196)}
; 1.5792564529770161119159865847905166447162628173828125p651 | == 1.5792564529770161119159865847905166447162628173828125p651
; [HW: 1.5792564529770161119159865847905166447162628173828125p651] 

; mpf : + 2608739145779245 651
; mpfd: + 2608739145779245 651 (1.47564e+196) class: Pos. norm. non-zero
; hwf : + 2608739145779245 651 (1.47564e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001010 #b1001010001001010001001101010000110001000100000101101)))
(assert (= r (fp #b0 #b11010001010 #b1001010001001010001001101010000110001000100000101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
