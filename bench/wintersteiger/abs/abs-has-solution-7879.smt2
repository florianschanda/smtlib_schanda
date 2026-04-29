(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.41004239827048660771424692939035594463348388671875p-411 {+ 1846666792057068 -411 (2.66627e-124)}
; 1.41004239827048660771424692939035594463348388671875p-411 | == 1.41004239827048660771424692939035594463348388671875p-411
; [HW: 1.41004239827048660771424692939035594463348388671875p-411] 

; mpf : + 1846666792057068 -411
; mpfd: + 1846666792057068 -411 (2.66627e-124) class: Pos. norm. non-zero
; hwf : + 1846666792057068 -411 (2.66627e-124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100100 #b0110100011111000100010011110001010001011100011101100)))
(assert (= r (fp #b0 #b01001100100 #b0110100011111000100010011110001010001011100011101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
