(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.769107106150339614458744108560495078563690185546875p219 {+ 3463750476666670 219 (1.49047e+066)}
; 1.769107106150339614458744108560495078563690185546875p219 S == 1.8810141446306773982399818123667500913143157958984375p109
; [HW: 1.8810141446306773982399818123667500913143157958984375p109] 

; mpf : + 3967734973466855 109
; mpfd: + 3967734973466855 109 (1.22085e+033) class: Pos. norm. non-zero
; hwf : + 3967734973466855 109 (1.22085e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011010 #b1100010011100100001101000000110000001001011100101110)))
(assert (= r (fp #b0 #b10001101100 #b1110000110001010001001001001101010000000100011100111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
