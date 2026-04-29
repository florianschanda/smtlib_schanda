(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9337674625460838928603379827109165489673614501953125p-482 {- 4205314796373237 -482 (-1.54863e-145)}
; -1.9337674625460838928603379827109165489673614501953125p-482 | == 1.9337674625460838928603379827109165489673614501953125p-482
; [HW: 1.9337674625460838928603379827109165489673614501953125p-482] 

; mpf : + 4205314796373237 -482
; mpfd: + 4205314796373237 -482 (1.54863e-145) class: Pos. norm. non-zero
; hwf : + 4205314796373237 -482 (1.54863e-145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011101 #b1110111100001011011000100110100110110100010011110101)))
(assert (= r (fp #b0 #b01000011101 #b1110111100001011011000100110100110110100010011110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
