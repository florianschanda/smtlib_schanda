(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1900040937283449249406430681119672954082489013671875p626 {+ 855702365713843 626 (3.3138e+188)}
; 1.1900040937283449249406430681119672954082489013671875p626 | == 1.1900040937283449249406430681119672954082489013671875p626
; [HW: 1.1900040937283449249406430681119672954082489013671875p626] 

; mpf : + 855702365713843 626
; mpfd: + 855702365713843 626 (3.3138e+188) class: Pos. norm. non-zero
; hwf : + 855702365713843 626 (3.3138e+188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110001 #b0011000010100100000110111011100010101011010110110011)))
(assert (= r (fp #b0 #b11001110001 #b0011000010100100000110111011100010101011010110110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
