(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2078078438935386795805015935911796987056732177734375p-838 {- 935883328323607 -838 (-6.58964e-253)}
; Y = 1.1405713271343500547772009667824022471904754638671875p-894 {+ 633076976501235 -894 (8.63587e-270)}
; -1.2078078438935386795805015935911796987056732177734375p-838 * 1.1405713271343500547772009667824022471904754638671875p-894 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111001 #b0011010100110010111001010001010101100000000000010111)))
(assert (= y (fp #b0 #b00010000001 #b0010001111111100011110111000010011001100000111110011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
