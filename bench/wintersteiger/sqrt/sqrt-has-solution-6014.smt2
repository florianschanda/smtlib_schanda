(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.03880298571301477039696692372672259807586669921875p-739 {+ 174753111997996 -739 (3.59225e-223)}
; 1.03880298571301477039696692372672259807586669921875p-739 S == 1.4413902911515774629691577501944266259670257568359375p-370
; [HW: 1.4413902911515774629691577501944266259670257568359375p-370] 

; mpf : + 1987845150755199 -370
; mpfd: + 1987845150755199 -370 (5.99354e-112) class: Pos. norm. non-zero
; hwf : + 1987845150755199 -370 (5.99354e-112) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011100 #b0000100111101110111111100001001010011111111000101100)))
(assert (= r (fp #b0 #b01010001101 #b0111000011111110111101000100000101000100100101111111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
