(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3632317672114353523937779755215160548686981201171875 575 {+ 1635850451462547 575 (1.68584e+173)}
; 1.3632317672114353523937779755215160548686981201171875 575 I == 1.3632317672114353523937779755215160548686981201171875 575
; [HW: 1.3632317672114353523937779755215160548686981201171875 575] 

; mpf : + 1635850451462547 575
; mpfd: + 1635850451462547 575 (1.68584e+173) class: Pos. norm. non-zero
; hwf : + 1635850451462547 575 (1.68584e+173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111110 #b0101110011111100110000011101000100001010100110010011)))
(assert (= r (fp #b0 #b11000111110 #b0101110011111100110000011101000100001010100110010011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
