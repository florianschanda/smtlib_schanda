(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2975263537090329091228113611578010022640228271484375p-447 {- 1339939575696903 -447 (-3.57033e-135)}
; -1.2975263537090329091228113611578010022640228271484375p-447 | == 1.2975263537090329091228113611578010022640228271484375p-447
; [HW: 1.2975263537090329091228113611578010022640228271484375p-447] 

; mpf : + 1339939575696903 -447
; mpfd: + 1339939575696903 -447 (3.57033e-135) class: Pos. norm. non-zero
; hwf : + 1339939575696903 -447 (3.57033e-135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001000000 #b0100110000101010101011111110011011100000111000000111)))
(assert (= r (fp #b0 #b01001000000 #b0100110000101010101011111110011011100000111000000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
