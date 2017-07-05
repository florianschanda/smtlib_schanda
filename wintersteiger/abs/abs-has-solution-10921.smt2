(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8707148029774447461903719158726744353771209716796875p-864 {+ 3921350862235195 -864 (1.52087e-260)}
; 1.8707148029774447461903719158726744353771209716796875p-864 | == 1.8707148029774447461903719158726744353771209716796875p-864
; [HW: 1.8707148029774447461903719158726744353771209716796875p-864] 

; mpf : + 3921350862235195 -864
; mpfd: + 3921350862235195 -864 (1.52087e-260) class: Pos. norm. non-zero
; hwf : + 3921350862235195 -864 (1.52087e-260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010011111 #b1101111011100111001010100101001011101110011000111011)))
(assert (= r (fp #b0 #b00010011111 #b1101111011100111001010100101001011101110011000111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
