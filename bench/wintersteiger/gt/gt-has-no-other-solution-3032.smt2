(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3043241551413380374668804506654851138591766357421875p-3 {- 1370554151694371 -3 (-0.163041)}
; Y = -1.2191726563029694485607024034834466874599456787109375p-869 {- 987065893255855 -869 (-3.09741e-262)}
; -1.3043241551413380374668804506654851138591766357421875p-3 > -1.2191726563029694485607024034834466874599456787109375p-869 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111100 #b0100110111101000001100000001010110110111000000100011)))
(assert (= y (fp #b1 #b00010011010 #b0011100000011011101100101111111011111111101010101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
