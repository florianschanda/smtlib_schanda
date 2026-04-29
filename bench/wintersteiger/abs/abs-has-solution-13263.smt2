(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0477959379226733371837099184631370007991790771484375p523 {- 215253768218375 523 (-2.87716e+157)}
; -1.0477959379226733371837099184631370007991790771484375p523 | == 1.0477959379226733371837099184631370007991790771484375p523
; [HW: 1.0477959379226733371837099184631370007991790771484375p523] 

; mpf : + 215253768218375 523
; mpfd: + 215253768218375 523 (2.87716e+157) class: Pos. norm. non-zero
; hwf : + 215253768218375 523 (2.87716e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000001010 #b0000110000111100010110101100011001000010011100000111)))
(assert (= r (fp #b0 #b11000001010 #b0000110000111100010110101100011001000010011100000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
