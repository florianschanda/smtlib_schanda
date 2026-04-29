(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5962412034308373076640918952762149274349212646484375p-278 {- 2685231661594055 -278 (-3.2867e-084)}
; -1.5962412034308373076640918952762149274349212646484375p-278 | == 1.5962412034308373076640918952762149274349212646484375p-278
; [HW: 1.5962412034308373076640918952762149274349212646484375p-278] 

; mpf : + 2685231661594055 -278
; mpfd: + 2685231661594055 -278 (3.2867e-084) class: Pos. norm. non-zero
; hwf : + 2685231661594055 -278 (3.2867e-084) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101001 #b1001100010100011010000110111010101000011010111000111)))
(assert (= r (fp #b0 #b01011101001 #b1001100010100011010000110111010101000011010111000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
