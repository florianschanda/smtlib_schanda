(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6311321661766482460365068618557415902614593505859375p916 {+ 2842366588414687 916 (9.03577e+275)}
; 1.6311321661766482460365068618557415902614593505859375p916 | == 1.6311321661766482460365068618557415902614593505859375p916
; [HW: 1.6311321661766482460365068618557415902614593505859375p916] 

; mpf : + 2842366588414687 916
; mpfd: + 2842366588414687 916 (9.03577e+275) class: Pos. norm. non-zero
; hwf : + 2842366588414687 916 (9.03577e+275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010011 #b1010000110010001111000001010110100101110101011011111)))
(assert (= r (fp #b0 #b11110010011 #b1010000110010001111000001010110100101110101011011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
