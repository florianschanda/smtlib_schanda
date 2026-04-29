(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.71275180304846141865482422872446477413177490234375p-481 {- 3209948754616700 -481 (-2.74326e-145)}
; Y = 1.494401778351894360952201168402098119258880615234375p-904 {+ 2226587664756902 -904 (1.10497e-272)}
; -1.71275180304846141865482422872446477413177490234375p-481 * 1.494401778351894360952201168402098119258880615234375p-904 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011110 #b1011011001110110111001101111010001000010000101111100)))
(assert (= y (fp #b0 #b00001110111 #b0111111010010001000111010110110100011011000010100110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
