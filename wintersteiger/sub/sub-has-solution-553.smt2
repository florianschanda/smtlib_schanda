(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1324847765030856550083626643754541873931884765625p-470 {- 596658390091560 -470 (-3.71479e-142)}
; Y = 1.692724885717897365111639373935759067535400390625p-708 {+ 3119755537189392 -708 (1.25704e-213)}
; -1.1324847765030856550083626643754541873931884765625p-470 - 1.692724885717897365111639373935759067535400390625p-708 == -1.1324847765030858770529675894067622721195220947265625p-470
; [HW: -1.1324847765030858770529675894067622721195220947265625p-470] 

; mpf : - 596658390091561 -470
; mpfd: - 596658390091561 -470 (-3.71479e-142) class: Neg. norm. non-zero
; hwf : - 596658390091561 -470 (-3.71479e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101001 #b0010000111101010100001011011011001001100011100101000)))
(assert (= y (fp #b0 #b00100111011 #b1011000101010110011010110000100101001000101000010000)))
(assert (= r (fp #b1 #b01000101001 #b0010000111101010100001011011011001001100011100101001)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
