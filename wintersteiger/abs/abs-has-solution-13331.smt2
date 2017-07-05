(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.604001899964742960946750827133655548095703125p-861 {- 2720182731612288 -861 (-1.04323e-259)}
; -1.604001899964742960946750827133655548095703125p-861 | == 1.604001899964742960946750827133655548095703125p-861
; [HW: 1.604001899964742960946750827133655548095703125p-861] 

; mpf : + 2720182731612288 -861
; mpfd: + 2720182731612288 -861 (1.04323e-259) class: Pos. norm. non-zero
; hwf : + 2720182731612288 -861 (1.04323e-259) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010100010 #b1001101010011111110111100101011100010010000010000000)))
(assert (= r (fp #b0 #b00010100010 #b1001101010011111110111100101011100010010000010000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
