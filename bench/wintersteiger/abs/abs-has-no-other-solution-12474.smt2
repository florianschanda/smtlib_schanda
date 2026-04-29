(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.32978064147567476283029463957063853740692138671875p-245 {+ 1485199974063852 -245 (2.35197e-074)}
; 1.32978064147567476283029463957063853740692138671875p-245 | == 1.32978064147567476283029463957063853740692138671875p-245
; [HW: 1.32978064147567476283029463957063853740692138671875p-245] 

; mpf : + 1485199974063852 -245
; mpfd: + 1485199974063852 -245 (2.35197e-074) class: Pos. norm. non-zero
; hwf : + 1485199974063852 -245 (2.35197e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001010 #b0101010001101100100000010000110111111101111011101100)))
(assert (= r (fp #b0 #b01100001010 #b0101010001101100100000010000110111111101111011101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
