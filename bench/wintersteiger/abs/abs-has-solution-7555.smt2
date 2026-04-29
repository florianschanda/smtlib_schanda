(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.715130075872206560916310991160571575164794921875p-684 {- 3220659543219504 -684 (-2.13688e-206)}
; -1.715130075872206560916310991160571575164794921875p-684 | == 1.715130075872206560916310991160571575164794921875p-684
; [HW: 1.715130075872206560916310991160571575164794921875p-684] 

; mpf : + 3220659543219504 -684
; mpfd: + 3220659543219504 -684 (2.13688e-206) class: Pos. norm. non-zero
; hwf : + 3220659543219504 -684 (2.13688e-206) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101010011 #b1011011100010010110000111100000001000001110100110000)))
(assert (= r (fp #b0 #b00101010011 #b1011011100010010110000111100000001000001110100110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
