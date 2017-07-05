(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.631359401156729393989053278346545994281768798828125p951 {+ 2843389963786306 951 (3.1051e+286)}
; 1.631359401156729393989053278346545994281768798828125p951 S == 1.8062997542804068995536681541125290095806121826171875p475
; [HW: 1.8062997542804068995536681541125290095806121826171875p475] 

; mpf : + 3631251272926163 475
; mpfd: + 3631251272926163 475 (1.76213e+143) class: Pos. norm. non-zero
; hwf : + 3631251272926163 475 (1.76213e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110110 #b1010000110100000110001010000101111111101100001000010)))
(assert (= r (fp #b0 #b10111011010 #b1100111001101001101010010010001101101000001111010011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
