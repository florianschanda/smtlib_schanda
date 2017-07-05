(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6218893796915059279939441694295965135097503662109375p-886 {+ 2800740778644335 -886 (3.14373e-267)}
; 1.6218893796915059279939441694295965135097503662109375p-886 | == 1.6218893796915059279939441694295965135097503662109375p-886
; [HW: 1.6218893796915059279939441694295965135097503662109375p-886] 

; mpf : + 2800740778644335 -886
; mpfd: + 2800740778644335 -886 (3.14373e-267) class: Pos. norm. non-zero
; hwf : + 2800740778644335 -886 (3.14373e-267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001001 #b1001111100110100001001000111001110000001001101101111)))
(assert (= r (fp #b0 #b00010001001 #b1001111100110100001001000111001110000001001101101111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
