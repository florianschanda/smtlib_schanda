(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.49902348784427630334903369657695293426513671875p-405 {+ 2247401993904608 -405 (1.8141e-122)}
; 1.49902348784427630334903369657695293426513671875p-405 S == 1.7314869262251308956734874300309456884860992431640625p-203
; [HW: 1.7314869262251308956734874300309456884860992431640625p-203] 

; mpf : + 3294324248373889 -203
; mpfd: + 3294324248373889 -203 (1.34688e-061) class: Pos. norm. non-zero
; hwf : + 3294324248373889 -203 (1.34688e-061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001101010 #b0111111111000000000000001101100000111010000111100000)))
(assert (= r (fp #b0 #b01100110100 #b1011101101000010101110100010100110010110101010000001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
