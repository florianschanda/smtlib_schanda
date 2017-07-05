(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9121642435669878867798843202763237059116363525390625 522 {+ 4108022547428977 522 (2.62532e+157)}
; 1.9121642435669878867798843202763237059116363525390625 522 I == 1.9121642435669878867798843202763237059116363525390625 522
; [HW: 1.9121642435669878867798843202763237059116363525390625 522] 

; mpf : + 4108022547428977 522
; mpfd: + 4108022547428977 522 (2.62532e+157) class: Pos. norm. non-zero
; hwf : + 4108022547428977 522 (2.62532e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001001 #b1110100110000011100110001000101010110011011001110001)))
(assert (= r (fp #b0 #b11000001001 #b1110100110000011100110001000101010110011011001110001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
